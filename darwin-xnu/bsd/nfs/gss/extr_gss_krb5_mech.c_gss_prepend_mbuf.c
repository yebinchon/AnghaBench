
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mbuf_t ;
typedef scalar_t__ errno_t ;


 int MBUF_WAITOK ;
 int * mbuf_data (int ) ;
 size_t mbuf_leadingspace (int ) ;
 size_t mbuf_len (int ) ;
 scalar_t__ mbuf_prepend (int *,size_t,int ) ;
 int mbuf_setdata (int ,int *,size_t) ;
 size_t mbuf_trailingspace (int ) ;
 int memcpy (int *,int *,size_t) ;
 int * memmove (int *,int *,size_t) ;

errno_t
gss_prepend_mbuf(mbuf_t *chain, uint8_t *bytes, size_t size)
{
 uint8_t *data = mbuf_data(*chain);
 size_t leading = mbuf_leadingspace(*chain);
 size_t trailing = mbuf_trailingspace(*chain);
 size_t mlen = mbuf_len(*chain);
 errno_t error;

 if (size > leading && size <= leading + trailing) {
  data = memmove(data + size - leading, data, mlen);
  mbuf_setdata(*chain, data, mlen);
 }

 error = mbuf_prepend(chain, size, MBUF_WAITOK);
 if (error)
  return (error);
 data = mbuf_data(*chain);
 memcpy(data, bytes, size);

 return (0);
}
