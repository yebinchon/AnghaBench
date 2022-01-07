
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* aprintf (char*,char const*,char const*,...) ;

char *Curl_auth_build_spn(const char *service, const char *host,
                          const char *realm)
{
  char *spn = ((void*)0);


  if(host && realm)
    spn = aprintf("%s/%s@%s", service, host, realm);
  else if(host)
    spn = aprintf("%s/%s", service, host);
  else if(realm)
    spn = aprintf("%s@%s", service, realm);


  return spn;
}
