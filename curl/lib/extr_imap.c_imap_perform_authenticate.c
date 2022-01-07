
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int imap_sendf (struct connectdata*,char*,char const*,...) ;

__attribute__((used)) static CURLcode imap_perform_authenticate(struct connectdata *conn,
                                          const char *mech,
                                          const char *initresp)
{
  CURLcode result = CURLE_OK;

  if(initresp) {

    result = imap_sendf(conn, "AUTHENTICATE %s %s", mech, initresp);
  }
  else {

    result = imap_sendf(conn, "AUTHENTICATE %s", mech);
  }

  return result;
}
