
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LK_LDAP_ERROR ;
 int ldap_err2string (int) ;
 char* set_thread_string (int ,int ) ;

char *
Curl_ldap_err2string_a(int error)

{
  return set_thread_string(LK_LDAP_ERROR, ldap_err2string(error));
}
