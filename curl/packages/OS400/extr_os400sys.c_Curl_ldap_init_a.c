
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QadrtConvertA2E (char*,char*,unsigned int,unsigned int) ;
 int free (char*) ;
 scalar_t__ ldap_init (char*,int) ;
 char* malloc (unsigned int) ;
 unsigned int strlen (char*) ;

void *
Curl_ldap_init_a(char * host, int port)

{
  unsigned int i;
  char * ehost;
  void * result;

  if(!host)
    return (void *) ldap_init(host, port);

  i = strlen(host);

  ehost = malloc(i + 1);
  if(!ehost)
    return (void *) ((void*)0);

  QadrtConvertA2E(ehost, host, i, i);
  ehost[i] = '\0';
  result = (void *) ldap_init(ehost, port);
  free(ehost);
  return result;
}
