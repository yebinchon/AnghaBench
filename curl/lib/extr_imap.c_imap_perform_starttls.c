
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int CURLcode ;


 int IMAP_STARTTLS ;
 int imap_sendf (struct connectdata*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_perform_starttls(struct connectdata *conn)
{

  CURLcode result = imap_sendf(conn, "STARTTLS");

  if(!result)
    state(conn, IMAP_STARTTLS);

  return result;
}
