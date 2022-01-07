
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct RTSP {long CSeq_recv; } ;
struct TYPE_6__ {char** str; } ;
struct TYPE_5__ {long rtsp_CSeq_recv; } ;
struct TYPE_4__ {struct RTSP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_2__ state; TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_RTSP_CSEQ_ERROR ;
 int CURLE_RTSP_SESSION_ERROR ;
 scalar_t__ ISSPACE (char) ;
 size_t STRING_RTSP_SESSION_ID ;
 scalar_t__ checkprefix (char*,char*) ;
 int failf (struct Curl_easy*,char*,...) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int sscanf (char*,char*,long*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

CURLcode Curl_rtsp_parseheader(struct connectdata *conn,
                               char *header)
{
  struct Curl_easy *data = conn->data;
  long CSeq = 0;

  if(checkprefix("CSeq:", header)) {

    int nc = sscanf(&header[4], ": %ld", &CSeq);
    if(nc == 1) {
      struct RTSP *rtsp = data->req.protop;
      rtsp->CSeq_recv = CSeq;
      data->state.rtsp_CSeq_recv = CSeq;
    }
    else {
      failf(data, "Unable to read the CSeq header: [%s]", header);
      return CURLE_RTSP_CSEQ_ERROR;
    }
  }
  else if(checkprefix("Session:", header)) {
    char *start;


    start = header + 8;
    while(*start && ISSPACE(*start))
      start++;

    if(!*start) {
      failf(data, "Got a blank Session ID");
    }
    else if(data->set.str[STRING_RTSP_SESSION_ID]) {

      if(strncmp(start, data->set.str[STRING_RTSP_SESSION_ID],
                 strlen(data->set.str[STRING_RTSP_SESSION_ID])) != 0) {
        failf(data, "Got RTSP Session ID Line [%s], but wanted ID [%s]",
              start, data->set.str[STRING_RTSP_SESSION_ID]);
        return CURLE_RTSP_SESSION_ERROR;
      }
    }
    else {







      char *end = start;
      while(*end && *end != ';' && !ISSPACE(*end))
        end++;


      data->set.str[STRING_RTSP_SESSION_ID] = malloc(end - start + 1);
      if(data->set.str[STRING_RTSP_SESSION_ID] == ((void*)0))
        return CURLE_OUT_OF_MEMORY;
      memcpy(data->set.str[STRING_RTSP_SESSION_ID], start, end - start);
      (data->set.str[STRING_RTSP_SESSION_ID])[end - start] = '\0';
    }
  }
  return CURLE_OK;
}
