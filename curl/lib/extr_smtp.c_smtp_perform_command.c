
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pp; } ;
struct TYPE_8__ {TYPE_3__ smtpc; } ;
struct connectdata {TYPE_4__ proto; struct Curl_easy* data; } ;
struct SMTP {char* custom; TYPE_2__* rcpt; } ;
struct TYPE_5__ {struct SMTP* protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
struct TYPE_6__ {int data; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_sendf (int *,char*,char*,...) ;
 int SMTP_COMMAND ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_perform_command(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SMTP *smtp = data->req.protop;


  if(smtp->rcpt)
    result = Curl_pp_sendf(&conn->proto.smtpc.pp, "%s %s",
                           smtp->custom && smtp->custom[0] != '\0' ?
                           smtp->custom : "VRFY",
                           smtp->rcpt->data);
  else
    result = Curl_pp_sendf(&conn->proto.smtpc.pp, "%s",
                           smtp->custom && smtp->custom[0] != '\0' ?
                           smtp->custom : "HELP");

  if(!result)
    state(conn, SMTP_COMMAND);

  return result;
}
