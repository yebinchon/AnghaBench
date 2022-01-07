
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_off_t ;


 scalar_t__ CURL_MASK_SCOFFT ;
 int DEBUGASSERT (int) ;

curl_off_t curlx_uztoso(size_t uznum)
{
  DEBUGASSERT(uznum <= (size_t) CURL_MASK_SCOFFT);
  return (curl_off_t)(uznum & (size_t) CURL_MASK_SCOFFT);




}
