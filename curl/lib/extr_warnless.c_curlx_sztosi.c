
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ CURL_MASK_SINT ;
 int DEBUGASSERT (int) ;

int curlx_sztosi(ssize_t sznum)
{





  DEBUGASSERT(sznum >= 0);



  return (int)(sznum & (ssize_t) CURL_MASK_SINT);




}
