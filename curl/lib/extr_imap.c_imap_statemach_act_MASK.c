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
struct pingpong {scalar_t__ sendleft; } ;
struct imap_conn {int state; struct pingpong pp; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; int /*<<< orphan*/ * sock; } ;
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_WEIRD_SERVER_REPLY ; 
 scalar_t__ FUNC0 (struct pingpong*) ; 
 scalar_t__ FUNC1 (struct pingpong*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct pingpong*,int*,size_t*) ; 
 size_t FIRSTSOCKET ; 
#define  IMAP_APPEND 140 
#define  IMAP_APPEND_FINAL 139 
#define  IMAP_AUTHENTICATE 138 
#define  IMAP_CAPABILITY 137 
#define  IMAP_FETCH 136 
#define  IMAP_FETCH_FINAL 135 
#define  IMAP_LIST 134 
#define  IMAP_LOGIN 133 
#define  IMAP_LOGOUT 132 
#define  IMAP_SEARCH 131 
#define  IMAP_SELECT 130 
#define  IMAP_SERVERGREET 129 
#define  IMAP_STARTTLS 128 
 int IMAP_STOP ; 
 int IMAP_UPGRADETLS ; 
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
 scalar_t__ FUNC14 (struct connectdata*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct connectdata*,int) ; 

__attribute__((used)) static CURLcode FUNC16(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  int imapcode;
  struct imap_conn *imapc = &conn->proto.imapc;
  struct pingpong *pp = &imapc->pp;
  size_t nread = 0;

  /* Busy upgrading the connection; right now all I/O is SSL/TLS, not IMAP */
  if(imapc->state == IMAP_UPGRADETLS)
    return FUNC3(conn);

  /* Flush any data that needs to be sent */
  if(pp->sendleft)
    return FUNC0(pp);

  do {
    /* Read the response from the server */
    result = FUNC2(sock, pp, &imapcode, &nread);
    if(result)
      return result;

    /* Was there an error parsing the response line? */
    if(imapcode == -1)
      return CURLE_WEIRD_SERVER_REPLY;

    if(!imapcode)
      break;

    /* We have now received a full IMAP server response */
    switch(imapc->state) {
    case IMAP_SERVERGREET:
      result = FUNC13(conn, imapcode, imapc->state);
      break;

    case IMAP_CAPABILITY:
      result = FUNC7(conn, imapcode, imapc->state);
      break;

    case IMAP_STARTTLS:
      result = FUNC14(conn, imapcode, imapc->state);
      break;

    case IMAP_AUTHENTICATE:
      result = FUNC6(conn, imapcode, imapc->state);
      break;

    case IMAP_LOGIN:
      result = FUNC11(conn, imapcode, imapc->state);
      break;

    case IMAP_LIST:
    case IMAP_SEARCH:
      result = FUNC10(conn, imapcode, imapc->state);
      break;

    case IMAP_SELECT:
      result = FUNC12(conn, imapcode, imapc->state);
      break;

    case IMAP_FETCH:
      result = FUNC9(conn, imapcode, imapc->state);
      break;

    case IMAP_FETCH_FINAL:
      result = FUNC8(conn, imapcode, imapc->state);
      break;

    case IMAP_APPEND:
      result = FUNC5(conn, imapcode, imapc->state);
      break;

    case IMAP_APPEND_FINAL:
      result = FUNC4(conn, imapcode, imapc->state);
      break;

    case IMAP_LOGOUT:
      /* fallthrough, just stop! */
    default:
      /* internal error */
      FUNC15(conn, IMAP_STOP);
      break;
    }
  } while(!result && imapc->state != IMAP_STOP && FUNC1(pp));

  return result;
}