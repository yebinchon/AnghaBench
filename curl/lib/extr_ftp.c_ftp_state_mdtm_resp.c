
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int timebuf ;
typedef scalar_t__ time_t ;
struct tm {size_t tm_mon; int tm_sec; int tm_min; int tm_hour; int tm_year; int tm_mday; int tm_wday; } ;
struct ftp_conn {int file; } ;
struct TYPE_7__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct FTP {void* transfer; } ;
struct TYPE_10__ {scalar_t__ filetime; void* timecond; } ;
struct TYPE_9__ {int timecondition; scalar_t__ timevalue; int get_filetime; int opt_no_body; } ;
struct TYPE_8__ {int * buffer; } ;
struct TYPE_6__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_5__ info; TYPE_4__ set; TYPE_3__ state; TYPE_1__ req; } ;
typedef int headerbuf ;
typedef scalar_t__ CURLcode ;


 int CLIENTWRITE_BOTH ;
 scalar_t__ CURLE_FTP_COULDNT_RETR_FILE ;
 scalar_t__ CURLE_OK ;


 scalar_t__ Curl_client_write (struct connectdata*,int ,char*,int ) ;
 scalar_t__ Curl_gmtime (scalar_t__,struct tm*) ;
 int * Curl_month ;
 int * Curl_wkday ;
 void* FTPTRANSFER_NONE ;
 int FTP_STOP ;
 void* TRUE ;
 scalar_t__ curl_getdate (char*,scalar_t__*) ;
 int failf (struct Curl_easy*,char*) ;
 scalar_t__ ftp_state_type (struct connectdata*) ;
 int infof (struct Curl_easy*,char*) ;
 int msnprintf (char*,int,char*,int,int,int,int,int,int,...) ;
 int sscanf (int *,char*,int*,int*,int*,int*,int*,int*) ;
 int state (struct connectdata*,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static CURLcode ftp_state_mdtm_resp(struct connectdata *conn,
                                    int ftpcode)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct FTP *ftp = data->req.protop;
  struct ftp_conn *ftpc = &conn->proto.ftpc;

  switch(ftpcode) {
  case 213:
    {


      int year, month, day, hour, minute, second;
      if(6 == sscanf(&data->state.buffer[4], "%04d%02d%02d%02d%02d%02d",
                     &year, &month, &day, &hour, &minute, &second)) {

        char timebuf[24];
        time_t secs = time(((void*)0));

        msnprintf(timebuf, sizeof(timebuf),
                  "%04d%02d%02d %02d:%02d:%02d GMT",
                  year, month, day, hour, minute, second);

        data->info.filetime = curl_getdate(timebuf, &secs);
      }
    }
    break;
  default:
    infof(data, "unsupported MDTM reply format\n");
    break;
  case 550:
    failf(data, "Given file does not exist");
    result = CURLE_FTP_COULDNT_RETR_FILE;
    break;
  }

  if(data->set.timecondition) {
    if((data->info.filetime > 0) && (data->set.timevalue > 0)) {
      switch(data->set.timecondition) {
      case 129:
      default:
        if(data->info.filetime <= data->set.timevalue) {
          infof(data, "The requested document is not new enough\n");
          ftp->transfer = FTPTRANSFER_NONE;
          data->info.timecond = TRUE;
          state(conn, FTP_STOP);
          return CURLE_OK;
        }
        break;
      case 128:
        if(data->info.filetime > data->set.timevalue) {
          infof(data, "The requested document is not old enough\n");
          ftp->transfer = FTPTRANSFER_NONE;
          data->info.timecond = TRUE;
          state(conn, FTP_STOP);
          return CURLE_OK;
        }
        break;
      }
    }
    else {
      infof(data, "Skipping time comparison\n");
    }
  }

  if(!result)
    result = ftp_state_type(conn);

  return result;
}
