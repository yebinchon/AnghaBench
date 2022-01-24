#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pingpong {scalar_t__ sendleft; } ;
struct smtp_conn {int state; struct pingpong pp; } ;
struct TYPE_3__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; int /*<<< orphan*/ * sock; } ;
struct TYPE_4__ {int httpcode; } ;
struct Curl_easy {TYPE_2__ info; } ;
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ FUNC0 (struct pingpong*) ; 
 scalar_t__ FUNC1 (struct pingpong*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct pingpong*,int*,size_t*) ; 
 size_t FIRSTSOCKET ; 
#define  SMTP_AUTH 138 
#define  SMTP_COMMAND 137 
#define  SMTP_DATA 136 
#define  SMTP_EHLO 135 
#define  SMTP_HELO 134 
#define  SMTP_MAIL 133 
#define  SMTP_POSTDATA 132 
#define  SMTP_QUIT 131 
#define  SMTP_RCPT 130 
#define  SMTP_SERVERGREET 129 
#define  SMTP_STARTTLS 128 
 int SMTP_STOP ; 
 int SMTP_UPGRADETLS ; 
 scalar_t__ FUNC3 (struct connectdata*) ; 
 scalar_t__ FUNC4 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC5 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC6 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC7 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC8 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC9 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC10 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC11 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC12 (struct connectdata*,int,int) ; 
 scalar_t__ FUNC13 (struct connectdata*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct connectdata*,int) ; 

__attribute__((used)) static CURLcode FUNC15(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  struct Curl_easy *data = conn->data;
  int smtpcode;
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  struct pingpong *pp = &smtpc->pp;
  size_t nread = 0;

  /* Busy upgrading the connection; right now all I/O is SSL/TLS, not SMTP */
  if(smtpc->state == SMTP_UPGRADETLS)
    return FUNC3(conn);

  /* Flush any data that needs to be sent */
  if(pp->sendleft)
    return FUNC0(pp);

  do {
    /* Read the response from the server */
    result = FUNC2(sock, pp, &smtpcode, &nread);
    if(result)
      return result;

    /* Store the latest response for later retrieval if necessary */
    if(smtpc->state != SMTP_QUIT && smtpcode != 1)
      data->info.httpcode = smtpcode;

    if(!smtpcode)
      break;

    /* We have now received a full SMTP server response */
    switch(smtpc->state) {
    case SMTP_SERVERGREET:
      result = FUNC12(conn, smtpcode, smtpc->state);
      break;

    case SMTP_EHLO:
      result = FUNC7(conn, smtpcode, smtpc->state);
      break;

    case SMTP_HELO:
      result = FUNC8(conn, smtpcode, smtpc->state);
      break;

    case SMTP_STARTTLS:
      result = FUNC13(conn, smtpcode, smtpc->state);
      break;

    case SMTP_AUTH:
      result = FUNC4(conn, smtpcode, smtpc->state);
      break;

    case SMTP_COMMAND:
      result = FUNC5(conn, smtpcode, smtpc->state);
      break;

    case SMTP_MAIL:
      result = FUNC9(conn, smtpcode, smtpc->state);
      break;

    case SMTP_RCPT:
      result = FUNC11(conn, smtpcode, smtpc->state);
      break;

    case SMTP_DATA:
      result = FUNC6(conn, smtpcode, smtpc->state);
      break;

    case SMTP_POSTDATA:
      result = FUNC10(conn, smtpcode, smtpc->state);
      break;

    case SMTP_QUIT:
      /* fallthrough, just stop! */
    default:
      /* internal error */
      FUNC14(conn, SMTP_STOP);
      break;
    }
  } while(!result && smtpc->state != SMTP_STOP && FUNC1(pp));

  return result;
}