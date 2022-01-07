
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_passwd; } ;
struct connectdata {int passwd; int user; TYPE_1__ bits; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int IMAP_LOGIN ;
 int IMAP_STOP ;
 int free (char*) ;
 char* imap_atom (int ,int) ;
 int imap_sendf (struct connectdata*,char*,char*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_perform_login(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  char *user;
  char *passwd;



  if(!conn->bits.user_passwd) {
    state(conn, IMAP_STOP);

    return result;
  }


  user = imap_atom(conn->user, 0);
  passwd = imap_atom(conn->passwd, 0);


  result = imap_sendf(conn, "LOGIN %s %s", user ? user : "",
                      passwd ? passwd : "");

  free(user);
  free(passwd);

  if(!result)
    state(conn, IMAP_LOGIN);

  return result;
}
