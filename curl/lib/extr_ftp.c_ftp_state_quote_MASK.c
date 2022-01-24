#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ftp_conn {int count1; int count2; int known_filesize; char* file; int /*<<< orphan*/  pp; } ;
struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_5__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct FTP {int /*<<< orphan*/  transfer; } ;
struct TYPE_6__ {int /*<<< orphan*/  ignorecl; struct curl_slist* postquote; struct curl_slist* prequote; struct curl_slist* quote; } ;
struct TYPE_4__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_1__ req; } ;
typedef  int ftpstate ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FTPTRANSFER_BODY ; 
#define  FTP_POSTQUOTE 131 
#define  FTP_QUOTE 130 
 int FTP_RETR ; 
#define  FTP_RETR_PREQUOTE 129 
 int FTP_RETR_SIZE ; 
 int FTP_STOP ; 
#define  FTP_STOR_PREQUOTE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct connectdata*,int) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn,
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
  case FTP_QUOTE:
  default:
    item = data->set.quote;
    break;
  case FTP_RETR_PREQUOTE:
  case FTP_STOR_PREQUOTE:
    item = data->set.prequote;
    break;
  case FTP_POSTQUOTE:
    item = data->set.postquote;
    break;
  }

  /*
   * This state uses:
   * 'count1' to iterate over the commands to send
   * 'count2' to store whether to allow commands to fail
   */

  if(init)
    ftpc->count1 = 0;
  else
    ftpc->count1++;

  if(item) {
    int i = 0;

    /* Skip count1 items in the linked list */
    while((i< ftpc->count1) && item) {
      item = item->next;
      i++;
    }
    if(item) {
      char *cmd = item->data;
      if(cmd[0] == '*') {
        cmd++;
        ftpc->count2 = 1; /* the sent command is allowed to fail */
      }
      else
        ftpc->count2 = 0; /* failure means cancel operation */

      FUNC1(&ftpc->pp, "%s", cmd);
      FUNC5(conn, instate);
      quote = TRUE;
    }
  }

  if(!quote) {
    /* No more quote to send, continue to ... */
    switch(instate) {
    case FTP_QUOTE:
    default:
      result = FUNC2(conn);
      break;
    case FTP_RETR_PREQUOTE:
      if(ftp->transfer != FTPTRANSFER_BODY)
        FUNC5(conn, FTP_STOP);
      else {
        if(ftpc->known_filesize != -1) {
          FUNC0(data, ftpc->known_filesize);
          result = FUNC3(conn, ftpc->known_filesize);
        }
        else {
          if(data->set.ignorecl) {
            /* This code is to support download of growing files.  It prevents
               the state machine from requesting the file size from the
               server.  With an unknown file size the download continues until
               the server terminates it, otherwise the client stops if the
               received byte count exceeds the reported file size.  Set option
               CURLOPT_IGNORE_CONTENT_LENGTH to 1 to enable this behavior.*/
            FUNC1(&ftpc->pp, "RETR %s", ftpc->file);
            FUNC5(conn, FTP_RETR);
          }
          else {
            FUNC1(&ftpc->pp, "SIZE %s", ftpc->file);
            FUNC5(conn, FTP_RETR_SIZE);
          }
        }
      }
      break;
    case FTP_STOR_PREQUOTE:
      result = FUNC4(conn, FALSE);
      break;
    case FTP_POSTQUOTE:
      break;
    }
  }

  return result;
}