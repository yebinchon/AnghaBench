
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef scalar_t__ errno_t ;


 int assert (int) ;
 size_t gss_mbuf_len (int *,int ) ;
 size_t mbuf_len (int *) ;
 int * mbuf_next (int *) ;
 scalar_t__ split_one_mbuf (int *,size_t,int **,int) ;

errno_t
gss_normalize_mbuf(mbuf_t chain, size_t offset, size_t *subchain_length, mbuf_t *subchain, mbuf_t *tail, int join)
{
 size_t length = *subchain_length ? *subchain_length : ~0;
 size_t len;
 mbuf_t mb, nmb;
 errno_t error;

 if (tail == ((void*)0))
  tail = &nmb;
 *tail = ((void*)0);
 *subchain = ((void*)0);

 for (len = offset, mb = chain; mb && len > mbuf_len(mb); mb = mbuf_next(mb))
   len -= mbuf_len(mb);


 if (mb == ((void*)0))
  return (0);

 error = split_one_mbuf(mb, len, subchain, join);
 if (error)
  return (error);

 assert(subchain != ((void*)0) && *subchain != ((void*)0));
 assert(offset == 0 ? mb == *subchain : 1);

 len = gss_mbuf_len(*subchain, 0);
 length = (length > len) ? len : length;
 *subchain_length = length;

 for (len = length, mb = *subchain; mb && len > mbuf_len(mb); mb = mbuf_next(mb))
  len -= mbuf_len(mb);

 error = split_one_mbuf(mb, len, tail, join);

 return (error);
}
