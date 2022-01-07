
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pp; } ;
struct TYPE_6__ {TYPE_2__ pop3c; } ;
struct TYPE_4__ {int user_passwd; } ;
struct connectdata {char* user; TYPE_3__ proto; TYPE_1__ bits; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_sendf (int *,char*,char*) ;
 int POP3_STOP ;
 int POP3_USER ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_perform_user(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;



  if(!conn->bits.user_passwd) {
    state(conn, POP3_STOP);

    return result;
  }


  result = Curl_pp_sendf(&conn->proto.pop3c.pp, "USER %s",
                         conn->user ? conn->user : "");
  if(!result)
    state(conn, POP3_USER);

  return result;
}
