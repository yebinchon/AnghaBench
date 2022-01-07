
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ftp_conn {scalar_t__ file; int pp; } ;
struct TYPE_3__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct TYPE_4__ {scalar_t__ timecondition; scalar_t__ get_filetime; } ;
struct Curl_easy {TYPE_2__ set; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int FTP_MDTM ;
 int PPSENDF (int *,char*,scalar_t__) ;
 int ftp_state_type (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_mdtm(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;


  if((data->set.get_filetime || data->set.timecondition) && ftpc->file) {



    PPSENDF(&ftpc->pp, "MDTM %s", ftpc->file);

    state(conn, FTP_MDTM);
  }
  else
    result = ftp_state_type(conn);

  return result;
}
