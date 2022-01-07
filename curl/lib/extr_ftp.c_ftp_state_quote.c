
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ftp_conn {int count1; int count2; int known_filesize; char* file; int pp; } ;
struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_5__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct FTP {int transfer; } ;
struct TYPE_6__ {int ignorecl; struct curl_slist* postquote; struct curl_slist* prequote; struct curl_slist* quote; } ;
struct TYPE_4__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_1__ req; } ;
typedef int ftpstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pgrsSetDownloadSize (struct Curl_easy*,int) ;
 int FALSE ;
 int FTPTRANSFER_BODY ;


 int FTP_RETR ;

 int FTP_RETR_SIZE ;
 int FTP_STOP ;

 int PPSENDF (int *,char*,char*) ;
 int TRUE ;
 int ftp_state_cwd (struct connectdata*) ;
 int ftp_state_retr (struct connectdata*,int) ;
 int ftp_state_ul_setup (struct connectdata*,int) ;
 int state (struct connectdata*,int) ;

__attribute__((used)) static CURLcode ftp_state_quote(struct connectdata *conn,
                                bool init,
                                ftpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct FTP *ftp = data->req.protop;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  bool quote = FALSE;
  struct curl_slist *item;

  switch(instate) {
  case 130:
  default:
    item = data->set.quote;
    break;
  case 129:
  case 128:
    item = data->set.prequote;
    break;
  case 131:
    item = data->set.postquote;
    break;
  }







  if(init)
    ftpc->count1 = 0;
  else
    ftpc->count1++;

  if(item) {
    int i = 0;


    while((i< ftpc->count1) && item) {
      item = item->next;
      i++;
    }
    if(item) {
      char *cmd = item->data;
      if(cmd[0] == '*') {
        cmd++;
        ftpc->count2 = 1;
      }
      else
        ftpc->count2 = 0;

      PPSENDF(&ftpc->pp, "%s", cmd);
      state(conn, instate);
      quote = TRUE;
    }
  }

  if(!quote) {

    switch(instate) {
    case 130:
    default:
      result = ftp_state_cwd(conn);
      break;
    case 129:
      if(ftp->transfer != FTPTRANSFER_BODY)
        state(conn, FTP_STOP);
      else {
        if(ftpc->known_filesize != -1) {
          Curl_pgrsSetDownloadSize(data, ftpc->known_filesize);
          result = ftp_state_retr(conn, ftpc->known_filesize);
        }
        else {
          if(data->set.ignorecl) {






            PPSENDF(&ftpc->pp, "RETR %s", ftpc->file);
            state(conn, FTP_RETR);
          }
          else {
            PPSENDF(&ftpc->pp, "SIZE %s", ftpc->file);
            state(conn, FTP_RETR_SIZE);
          }
        }
      }
      break;
    case 128:
      result = ftp_state_ul_setup(conn, FALSE);
      break;
    case 131:
      break;
    }
  }

  return result;
}
