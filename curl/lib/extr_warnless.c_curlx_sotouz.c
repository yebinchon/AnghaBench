
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_off_t ;


 scalar_t__ CURL_MASK_USIZE_T ;
 int DEBUGASSERT (int) ;

size_t curlx_sotouz(curl_off_t sonum)
{





  DEBUGASSERT(sonum >= 0);
  return (size_t)(sonum & (curl_off_t) CURL_MASK_USIZE_T);




}
