
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int LDAPURLDesc ;


 int LDAP_NO_MEMORY ;
 int LDAP_SUCCESS ;
 int _ldap_free_urldesc (int *) ;
 int _ldap_url_parse2 (struct connectdata const*,int *) ;
 int * calloc (int,int) ;

__attribute__((used)) static int _ldap_url_parse(const struct connectdata *conn,
                           LDAPURLDesc **ludpp)
{
  LDAPURLDesc *ludp = calloc(1, sizeof(*ludp));
  int rc;

  *ludpp = ((void*)0);
  if(!ludp)
     return LDAP_NO_MEMORY;

  rc = _ldap_url_parse2(conn, ludp);
  if(rc != LDAP_SUCCESS) {
    _ldap_free_urldesc(ludp);
    ludp = ((void*)0);
  }
  *ludpp = ludp;
  return (rc);
}
