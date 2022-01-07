
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GetEnv (char const*) ;

char *curl_getenv(const char *v)
{
  return GetEnv(v);
}
