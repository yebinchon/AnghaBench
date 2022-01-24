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
struct connectdata {struct Curl_easy* data; } ;
struct RTSP {long CSeq_recv; } ;
struct TYPE_6__ {char** str; } ;
struct TYPE_5__ {long rtsp_CSeq_recv; } ;
struct TYPE_4__ {struct RTSP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_2__ state; TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLE_RTSP_CSEQ_ERROR ; 
 int /*<<< orphan*/  CURLE_RTSP_SESSION_ERROR ; 
 scalar_t__ FUNC0 (char) ; 
 size_t STRING_RTSP_SESSION_ID ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*,...) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,char*,long*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

CURLcode FUNC8(struct connectdata *conn,
                               char *header)
{
  struct Curl_easy *data = conn->data;
  long CSeq = 0;

  if(FUNC1("CSeq:", header)) {
    /* Store the received CSeq. Match is verified in rtsp_done */
    int nc = FUNC5(&header[4], ": %ld", &CSeq);
    if(nc == 1) {
      struct RTSP *rtsp = data->req.protop;
      rtsp->CSeq_recv = CSeq; /* mark the request */
      data->state.rtsp_CSeq_recv = CSeq; /* update the handle */
    }
    else {
      FUNC2(data, "Unable to read the CSeq header: [%s]", header);
      return CURLE_RTSP_CSEQ_ERROR;
    }
  }
  else if(FUNC1("Session:", header)) {
    char *start;

    /* Find the first non-space letter */
    start = header + 8;
    while(*start && FUNC0(*start))
      start++;

    if(!*start) {
      FUNC2(data, "Got a blank Session ID");
    }
    else if(data->set.str[STRING_RTSP_SESSION_ID]) {
      /* If the Session ID is set, then compare */
      if(FUNC7(start, data->set.str[STRING_RTSP_SESSION_ID],
                 FUNC6(data->set.str[STRING_RTSP_SESSION_ID]))  != 0) {
        FUNC2(data, "Got RTSP Session ID Line [%s], but wanted ID [%s]",
              start, data->set.str[STRING_RTSP_SESSION_ID]);
        return CURLE_RTSP_SESSION_ERROR;
      }
    }
    else {
      /* If the Session ID is not set, and we find it in a response, then set
       * it.
       *
       * Allow any non whitespace content, up to the field separator or end of
       * line. RFC 2326 isn't 100% clear on the session ID and for example
       * gstreamer does url-encoded session ID's not covered by the standard.
       */
      char *end = start;
      while(*end && *end != ';' && !FUNC0(*end))
        end++;

      /* Copy the id substring into a new buffer */
      data->set.str[STRING_RTSP_SESSION_ID] = FUNC3(end - start + 1);
      if(data->set.str[STRING_RTSP_SESSION_ID] == NULL)
        return CURLE_OUT_OF_MEMORY;
      FUNC4(data->set.str[STRING_RTSP_SESSION_ID], start, end - start);
      (data->set.str[STRING_RTSP_SESSION_ID])[end - start] = '\0';
    }
  }
  return CURLE_OK;
}