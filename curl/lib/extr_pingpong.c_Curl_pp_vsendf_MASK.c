#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct pingpong {scalar_t__ sendleft; size_t sendsize; char* sendthis; int /*<<< orphan*/  response; struct connectdata* conn; } ;
struct connectdata {int data_prot; struct Curl_easy* data; int /*<<< orphan*/ * sock; } ;
struct TYPE_2__ {scalar_t__ verbose; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum protection_level { ____Placeholder_protection_level } protection_level ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ CURLE_SEND_ERROR ; 
 int /*<<< orphan*/  CURLINFO_HEADER_OUT ; 
 scalar_t__ FUNC0 (struct Curl_easy*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pingpong*) ; 
 scalar_t__ FUNC4 (struct connectdata*,int /*<<< orphan*/ ,char*,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 size_t FIRSTSOCKET ; 
 int PROT_CMD ; 
 int PROT_LAST ; 
 int PROT_NONE ; 
 char* FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (char*) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 

CURLcode FUNC10(struct pingpong *pp,
                        const char *fmt,
                        va_list args)
{
  ssize_t bytes_written;
  size_t write_len;
  char *fmt_crlf;
  char *s;
  CURLcode result;
  struct connectdata *conn = pp->conn;
  struct Curl_easy *data;

#ifdef HAVE_GSSAPI
  enum protection_level data_sec;
#endif

  FUNC5(pp->sendleft == 0);
  FUNC5(pp->sendsize == 0);
  FUNC5(pp->sendthis == NULL);

  if(!conn)
    /* can't send without a connection! */
    return CURLE_SEND_ERROR;

  data = conn->data;

  fmt_crlf = FUNC6("%s\r\n", fmt); /* append a trailing CRLF */
  if(!fmt_crlf)
    return CURLE_OUT_OF_MEMORY;

  s = FUNC9(fmt_crlf, args); /* trailing CRLF appended */
  FUNC7(fmt_crlf);
  if(!s)
    return CURLE_OUT_OF_MEMORY;

  bytes_written = 0;
  write_len = FUNC8(s);

  FUNC3(pp);

  result = FUNC0(data, s, write_len);
  /* Curl_convert_to_network calls failf if unsuccessful */
  if(result) {
    FUNC7(s);
    return result;
  }

#ifdef HAVE_GSSAPI
  conn->data_prot = PROT_CMD;
#endif
  result = FUNC4(conn, conn->sock[FIRSTSOCKET], s, write_len,
                     &bytes_written);
#ifdef HAVE_GSSAPI
  data_sec = conn->data_prot;
  DEBUGASSERT(data_sec > PROT_NONE && data_sec < PROT_LAST);
  conn->data_prot = data_sec;
#endif

  if(result) {
    FUNC7(s);
    return result;
  }

  if(conn->data->set.verbose)
    FUNC1(conn->data, CURLINFO_HEADER_OUT, s, (size_t)bytes_written);

  if(bytes_written != (ssize_t)write_len) {
    /* the whole chunk was not sent, keep it around and adjust sizes */
    pp->sendthis = s;
    pp->sendsize = write_len;
    pp->sendleft = write_len - bytes_written;
  }
  else {
    FUNC7(s);
    pp->sendthis = NULL;
    pp->sendleft = pp->sendsize = 0;
    pp->response = FUNC2();
  }

  return CURLE_OK;
}