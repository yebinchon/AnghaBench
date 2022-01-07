
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ctl_valid; int pp; } ;
struct TYPE_4__ {TYPE_1__ ftpc; } ;
struct connectdata {TYPE_2__ proto; int data; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_pp_sendf (int *,char*,char*) ;
 scalar_t__ FALSE ;
 int FTP_QUIT ;
 int FTP_STOP ;
 int connclose (struct connectdata*,char*) ;
 int curl_easy_strerror (scalar_t__) ;
 int failf (int ,char*,int ) ;
 scalar_t__ ftp_block_statemach (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_quit(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;

  if(conn->proto.ftpc.ctl_valid) {
    result = Curl_pp_sendf(&conn->proto.ftpc.pp, "%s", "QUIT");
    if(result) {
      failf(conn->data, "Failure sending QUIT command: %s",
            curl_easy_strerror(result));
      conn->proto.ftpc.ctl_valid = FALSE;
      connclose(conn, "QUIT command failed");
      state(conn, FTP_STOP);
      return result;
    }

    state(conn, FTP_QUIT);

    result = ftp_block_statemach(conn);
  }

  return result;
}
