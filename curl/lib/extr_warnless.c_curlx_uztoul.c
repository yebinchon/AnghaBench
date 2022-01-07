
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURL_MASK_ULONG ;
 int DEBUGASSERT (int) ;

unsigned long curlx_uztoul(size_t uznum)
{
  return (unsigned long)(uznum & (size_t) CURL_MASK_ULONG);




}
