
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CURLMIN (int ,size_t) ;
 int curl_strnequal (char const*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static bool checkprefixmax(const char *prefix, const char *buffer, size_t len)
{
  size_t ch = CURLMIN(strlen(prefix), len);
  return curl_strnequal(prefix, buffer, ch);
}
