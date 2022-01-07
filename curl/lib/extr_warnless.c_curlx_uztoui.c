
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURL_MASK_UINT ;
 int DEBUGASSERT (int) ;

unsigned int curlx_uztoui(size_t uznum)
{
  return (unsigned int)(uznum & (size_t) CURL_MASK_UINT);




}
