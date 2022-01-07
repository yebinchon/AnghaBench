
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURL_MASK_SINT ;
 int DEBUGASSERT (int) ;

int curlx_uztosi(size_t uznum)
{





  DEBUGASSERT(uznum <= (size_t) CURL_MASK_SINT);
  return (int)(uznum & (size_t) CURL_MASK_SINT);




}
