
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LDAPMessage ;


 int QadrtConvertE2A (char*,char*,int,int) ;
 int free (char*) ;
 char* ldap_get_dn (void*,int *) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char *
Curl_ldap_get_dn_a(void * ld, LDAPMessage * entry)

{
  int i;
  char * cp;
  char * cp2;

  cp = ldap_get_dn(ld, entry);

  if(!cp)
    return cp;

  i = strlen(cp);

  cp2 = malloc(i + 1);
  if(!cp2)
    return cp2;

  QadrtConvertE2A(cp2, cp, i, i);
  cp2[i] = '\0';





  strcpy(cp, cp2);
  free(cp2);
  return cp;
}
