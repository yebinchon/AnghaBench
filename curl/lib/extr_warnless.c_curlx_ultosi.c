
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURL_MASK_SINT ;
 int DEBUGASSERT (int) ;

int curlx_ultosi(unsigned long ulnum)
{





  DEBUGASSERT(ulnum <= (unsigned long) CURL_MASK_SINT);
  return (int)(ulnum & (unsigned long) CURL_MASK_SINT);




}
