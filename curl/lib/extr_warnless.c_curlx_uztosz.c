
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ CURL_MASK_SSIZE_T ;
 int DEBUGASSERT (int) ;

ssize_t curlx_uztosz(size_t uznum)
{





  DEBUGASSERT(uznum <= (size_t) CURL_MASK_SSIZE_T);
  return (ssize_t)(uznum & (size_t) CURL_MASK_SSIZE_T);




}
