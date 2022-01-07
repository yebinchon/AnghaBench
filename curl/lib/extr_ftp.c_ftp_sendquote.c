
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong {int response; } ;
struct ftp_conn {struct pingpong pp; } ;
struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_2__ {struct ftp_conn ftpc; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef int ssize_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_QUOTE_ERROR ;
 scalar_t__ Curl_GetFTPResponse (int *,struct connectdata*,int*) ;
 int Curl_now () ;
 int FALSE ;
 int PPSENDF (struct pingpong*,char*,char*) ;
 int TRUE ;
 int failf (int ,char*,char*) ;

__attribute__((used)) static
CURLcode ftp_sendquote(struct connectdata *conn, struct curl_slist *quote)
{
  struct curl_slist *item;
  ssize_t nread;
  int ftpcode;
  CURLcode result;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  struct pingpong *pp = &ftpc->pp;

  item = quote;
  while(item) {
    if(item->data) {
      char *cmd = item->data;
      bool acceptfail = FALSE;






      if(cmd[0] == '*') {
        cmd++;
        acceptfail = TRUE;
      }

      PPSENDF(&conn->proto.ftpc.pp, "%s", cmd);

      pp->response = Curl_now();

      result = Curl_GetFTPResponse(&nread, conn, &ftpcode);
      if(result)
        return result;

      if(!acceptfail && (ftpcode >= 400)) {
        failf(conn->data, "QUOT string not accepted: %s", cmd);
        return CURLE_QUOTE_ERROR;
      }
    }

    item = item->next;
  }

  return CURLE_OK;
}
