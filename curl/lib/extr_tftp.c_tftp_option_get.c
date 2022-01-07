
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t Curl_strnlen (char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *tftp_option_get(const char *buf, size_t len,
                                   const char **option, const char **value)
{
  size_t loc;

  loc = Curl_strnlen(buf, len);
  loc++;

  if(loc >= len)
    return ((void*)0);
  *option = buf;

  loc += Curl_strnlen(buf + loc, len-loc);
  loc++;

  if(loc > len)
    return ((void*)0);
  *value = &buf[strlen(*option) + 1];

  return &buf[loc];
}
