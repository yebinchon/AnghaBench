
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct berval {int dummy; } ;
typedef int LDAPMessage ;


 int LDAP_NO_MEMORY ;
 int QadrtConvertA2E (char*,char const*,int,int) ;
 int free (char*) ;
 int ldap_err2string (int ) ;
 struct berval** ldap_get_values_len (void*,int *,char*) ;
 int ldap_set_lderrno (void*,int ,int *,int ) ;
 char* malloc (int) ;
 int strlen (char const*) ;

struct berval * *
Curl_ldap_get_values_len_a(void * ld, LDAPMessage * entry, const char * attr)

{
  char * cp;
  struct berval * * result;

  cp = (char *) ((void*)0);

  if(attr) {
    int i = strlen(attr);

    cp = malloc(i + 1);
    if(!cp) {
      ldap_set_lderrno(ld, LDAP_NO_MEMORY, ((void*)0),
                       ldap_err2string(LDAP_NO_MEMORY));
      return (struct berval * *) ((void*)0);
    }

    QadrtConvertA2E(cp, attr, i, i);
    cp[i] = '\0';
  }

  result = ldap_get_values_len(ld, entry, cp);
  free(cp);




  return result;
}
