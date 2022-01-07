
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* file; int pp; } ;
struct TYPE_8__ {TYPE_3__ ftpc; } ;
struct connectdata {TYPE_4__ proto; struct Curl_easy* data; } ;
struct FTP {scalar_t__ transfer; } ;
struct TYPE_6__ {char** str; scalar_t__ upload; scalar_t__ ftp_list_only; scalar_t__ ftp_use_pret; scalar_t__ ftp_use_port; } ;
struct TYPE_5__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int EPRT ;
 scalar_t__ FTPTRANSFER_BODY ;
 int FTP_PRET ;
 int FTP_RETR_PREQUOTE ;
 int PPSENDF (int *,char*,char*) ;
 size_t STRING_CUSTOMREQUEST ;
 int TRUE ;
 int ftp_state_quote (struct connectdata*,int ,int ) ;
 int ftp_state_use_pasv (struct connectdata*) ;
 int ftp_state_use_port (struct connectdata*,int ) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_prepare_transfer(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct FTP *ftp = conn->data->req.protop;
  struct Curl_easy *data = conn->data;

  if(ftp->transfer != FTPTRANSFER_BODY) {



    state(conn, FTP_RETR_PREQUOTE);
    result = ftp_state_quote(conn, TRUE, FTP_RETR_PREQUOTE);
  }
  else if(data->set.ftp_use_port) {

    result = ftp_state_use_port(conn, EPRT);
  }
  else {

    if(data->set.ftp_use_pret) {


      if(!conn->proto.ftpc.file) {
        PPSENDF(&conn->proto.ftpc.pp, "PRET %s",
                data->set.str[STRING_CUSTOMREQUEST]?
                data->set.str[STRING_CUSTOMREQUEST]:
                (data->set.ftp_list_only?"NLST":"LIST"));
      }
      else if(data->set.upload) {
        PPSENDF(&conn->proto.ftpc.pp, "PRET STOR %s", conn->proto.ftpc.file);
      }
      else {
        PPSENDF(&conn->proto.ftpc.pp, "PRET RETR %s", conn->proto.ftpc.file);
      }
      state(conn, FTP_PRET);
    }
    else {
      result = ftp_state_use_pasv(conn);
    }
  }
  return result;
}
