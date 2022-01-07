
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pp; } ;
struct TYPE_8__ {TYPE_3__ pop3c; } ;
struct connectdata {TYPE_4__ proto; struct Curl_easy* data; } ;
struct POP3 {char* id; char* custom; int transfer; } ;
struct TYPE_6__ {scalar_t__ ftp_list_only; } ;
struct TYPE_5__ {struct POP3* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_sendf (int *,char*,char const*,...) ;
 int FTPTRANSFER_INFO ;
 int POP3_COMMAND ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_perform_command(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct POP3 *pop3 = data->req.protop;
  const char *command = ((void*)0);


  if(pop3->id[0] == '\0' || conn->data->set.ftp_list_only) {
    command = "LIST";

    if(pop3->id[0] != '\0')

      pop3->transfer = FTPTRANSFER_INFO;
  }
  else
    command = "RETR";


  if(pop3->id[0] != '\0')
    result = Curl_pp_sendf(&conn->proto.pop3c.pp, "%s %s",
                           (pop3->custom && pop3->custom[0] != '\0' ?
                            pop3->custom : command), pop3->id);
  else
    result = Curl_pp_sendf(&conn->proto.pop3c.pp, "%s",
                           (pop3->custom && pop3->custom[0] != '\0' ?
                            pop3->custom : command));

  if(!result)
    state(conn, POP3_COMMAND);

  return result;
}
