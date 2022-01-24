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
struct imap_conn {int preftype; int /*<<< orphan*/  login_disabled; int /*<<< orphan*/  sasl; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef  int saslprogress ;
typedef  int /*<<< orphan*/  imapstate ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_LOGIN_DENIED ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct connectdata*,int,int*) ; 
 int /*<<< orphan*/  IMAP_STOP ; 
 int IMAP_TYPE_CLEARTEXT ; 
#define  SASL_DONE 129 
#define  SASL_IDLE 128 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC4(struct connectdata *conn,
                                     int imapcode,
                                     imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct imap_conn *imapc = &conn->proto.imapc;
  saslprogress progress;

  (void)instate; /* no use for this yet */

  result = FUNC0(&imapc->sasl, conn, imapcode, &progress);
  if(!result)
    switch(progress) {
    case SASL_DONE:
      FUNC3(conn, IMAP_STOP);  /* Authenticated */
      break;
    case SASL_IDLE:            /* No mechanism left after cancellation */
      if((!imapc->login_disabled) && (imapc->preftype & IMAP_TYPE_CLEARTEXT))
        /* Perform clear text authentication */
        result = FUNC2(conn);
      else {
        FUNC1(data, "Authentication cancelled");
        result = CURLE_LOGIN_DENIED;
      }
      break;
    default:
      break;
    }

  return result;
}