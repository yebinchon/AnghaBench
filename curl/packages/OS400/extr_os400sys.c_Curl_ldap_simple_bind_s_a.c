
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LDAP_NO_MEMORY ;
 int QadrtConvertA2E (char*,char*,int,int) ;
 int free (char*) ;
 int ldap_simple_bind_s (void*,char*,char*) ;
 char* malloc (int) ;
 int strlen (char*) ;

int
Curl_ldap_simple_bind_s_a(void * ld, char * dn, char * passwd)

{
  int i;
  char * edn;
  char * epasswd;

  edn = (char *) ((void*)0);
  epasswd = (char *) ((void*)0);

  if(dn) {
    i = strlen(dn);

    edn = malloc(i + 1);
    if(!edn)
      return LDAP_NO_MEMORY;

    QadrtConvertA2E(edn, dn, i, i);
    edn[i] = '\0';
  }

  if(passwd) {
    i = strlen(passwd);

    epasswd = malloc(i + 1);
    if(!epasswd) {
      free(edn);
      return LDAP_NO_MEMORY;
    }

    QadrtConvertA2E(epasswd, passwd, i, i);
    epasswd[i] = '\0';
  }

  i = ldap_simple_bind_s(ld, edn, epasswd);
  free(epasswd);
  free(edn);
  return i;
}
