
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_multi {scalar_t__ max_concurrent_streams; } ;



size_t Curl_multi_max_concurrent_streams(struct Curl_multi *multi)
{
  return multi ? ((size_t)multi->max_concurrent_streams ?
                  (size_t)multi->max_concurrent_streams : 100) : 0;
}
