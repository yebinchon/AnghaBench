
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long CURLAUTH_BASIC ;
 long CURLAUTH_DIGEST ;
 long CURLAUTH_NONE ;
 long CURLAUTH_NTLM ;
 scalar_t__ curl_strequal (char const*,char*) ;

__attribute__((used)) static long parse_auth_name(const char *arg)
{
  if(!arg)
    return CURLAUTH_NONE;
  if(curl_strequal(arg, "basic"))
    return CURLAUTH_BASIC;
  if(curl_strequal(arg, "digest"))
    return CURLAUTH_DIGEST;
  if(curl_strequal(arg, "ntlm"))
    return CURLAUTH_NTLM;
  return CURLAUTH_NONE;
}
