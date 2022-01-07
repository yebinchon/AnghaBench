
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int known_filesize; } ;
struct TYPE_16__ {TYPE_7__ ftpc; } ;
struct TYPE_13__ {void* type_set; } ;
struct TYPE_12__ {int * rawalloc; } ;
struct connectdata {TYPE_8__ proto; int passwd; int user; TYPE_5__ bits; TYPE_4__ host; struct Curl_easy* data; } ;
struct FTP {int passwd; int user; scalar_t__ downloadsize; int transfer; int * path; } ;
struct TYPE_14__ {void* prefer_ascii; void* ftp_list_only; } ;
struct TYPE_10__ {int * path; } ;
struct TYPE_11__ {TYPE_2__ up; } ;
struct TYPE_9__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_6__ set; TYPE_3__ state; TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_URL_MALFORMAT ;
 char Curl_raw_toupper (char) ;
 void* FALSE ;
 int FTPTRANSFER_BODY ;
 void* TRUE ;
 struct FTP* calloc (int,int) ;
 scalar_t__ isBadFtpString (int ) ;
 char* strstr (int *,char*) ;

__attribute__((used)) static CURLcode ftp_setup_connection(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  char *type;
  struct FTP *ftp;

  conn->data->req.protop = ftp = calloc(sizeof(struct FTP), 1);
  if(((void*)0) == ftp)
    return CURLE_OUT_OF_MEMORY;

  ftp->path = &data->state.up.path[1];



  type = strstr(ftp->path, ";type=");

  if(!type)
    type = strstr(conn->host.rawalloc, ";type=");

  if(type) {
    char command;
    *type = 0;
    command = Curl_raw_toupper(type[6]);
    conn->bits.type_set = TRUE;

    switch(command) {
    case 'A':
      data->set.prefer_ascii = TRUE;
      break;

    case 'D':
      data->set.ftp_list_only = TRUE;
      break;

    case 'I':
    default:

      data->set.prefer_ascii = FALSE;
      break;
    }
  }


  ftp->transfer = FTPTRANSFER_BODY;
  ftp->downloadsize = 0;





  ftp->user = conn->user;
  ftp->passwd = conn->passwd;
  if(isBadFtpString(ftp->user))
    return CURLE_URL_MALFORMAT;
  if(isBadFtpString(ftp->passwd))
    return CURLE_URL_MALFORMAT;

  conn->proto.ftpc.known_filesize = -1;

  return CURLE_OK;
}
