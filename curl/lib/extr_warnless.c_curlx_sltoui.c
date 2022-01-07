
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURL_MASK_UINT ;
 int DEBUGASSERT (int) ;

unsigned int curlx_sltoui(long slnum)
{





  DEBUGASSERT(slnum >= 0);



  return (unsigned int)(slnum & (long) CURL_MASK_UINT);




}
