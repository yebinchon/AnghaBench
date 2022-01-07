
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef scalar_t__ errno_t ;


 scalar_t__ EINVAL ;
 int MBUF_PKTHDR ;
 int MBUF_WAITOK ;
 int mbuf_flags (int *) ;
 size_t mbuf_len (int *) ;
 int * mbuf_next (int *) ;
 scalar_t__ mbuf_setflags_mask (int *,int,int) ;
 int mbuf_setnext (int *,int *) ;
 scalar_t__ mbuf_split (int *,size_t,int ,int **) ;

__attribute__((used)) static errno_t
split_one_mbuf(mbuf_t mb, size_t offset, mbuf_t *nmb, int join)
{
 errno_t error;

 *nmb = mb;

 if (mb == ((void*)0) || offset == 0)
  return (0);


 if (mbuf_len(mb) == offset) {
  *nmb = mbuf_next(mb);
  if (!join)
   mbuf_setnext(mb, ((void*)0));
  return (0);
 }

 if (offset > mbuf_len(mb))
  return (EINVAL);

 error = mbuf_split(mb, offset, MBUF_WAITOK, nmb);
 if (error)
  return (error);

 if (mbuf_flags(*nmb) & MBUF_PKTHDR) {

  error = mbuf_setflags_mask(*nmb, ~MBUF_PKTHDR, MBUF_PKTHDR);
 }

 if (join)

  mbuf_setnext(mb, *nmb);

 return (0);
}
