
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURL_MASK_UCHAR ;
 int DEBUGASSERT (int) ;

unsigned char curlx_ultouc(unsigned long ulnum)
{





  DEBUGASSERT(ulnum <= (unsigned long) CURL_MASK_UCHAR);
  return (unsigned char)(ulnum & (unsigned long) CURL_MASK_UCHAR);




}
