
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURL_MASK_USHORT ;
 int DEBUGASSERT (int) ;

unsigned short curlx_sltous(long slnum)
{





  DEBUGASSERT(slnum >= 0);
  DEBUGASSERT((unsigned long) slnum <= (unsigned long) CURL_MASK_USHORT);
  return (unsigned short)(slnum & (long) CURL_MASK_USHORT);




}
