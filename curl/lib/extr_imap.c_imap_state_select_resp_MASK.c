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
struct imap_conn {void* mailbox; void* mailbox_uidvalidity; } ;
struct TYPE_5__ {struct imap_conn imapc; } ;
struct connectdata {struct Curl_easy* data; TYPE_2__ proto; } ;
struct IMAP {char* mailbox; scalar_t__ query; scalar_t__ custom; scalar_t__ uidvalidity; } ;
struct TYPE_6__ {char* buffer; } ;
struct TYPE_4__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_3__ state; TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  imapstate ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_LOGIN_DENIED ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_REMOTE_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int IMAP_RESP_OK ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 
 int FUNC5 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*) ; 
 void* FUNC7 (char*) ; 

__attribute__((used)) static CURLcode FUNC8(struct connectdata *conn, int imapcode,
                                       imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = conn->data->req.protop;
  struct imap_conn *imapc = &conn->proto.imapc;
  const char *line = data->state.buffer;

  (void)instate; /* no use for this yet */

  if(imapcode == '*') {
    /* See if this is an UIDVALIDITY response */
    char tmp[20];
    if(FUNC5(line + 2, "OK [UIDVALIDITY %19[0123456789]]", tmp) == 1) {
      FUNC0(imapc->mailbox_uidvalidity);
      imapc->mailbox_uidvalidity = FUNC7(tmp);
    }
  }
  else if(imapcode == IMAP_RESP_OK) {
    /* Check if the UIDVALIDITY has been specified and matches */
    if(imap->uidvalidity && imapc->mailbox_uidvalidity &&
       !FUNC6(imap->uidvalidity, imapc->mailbox_uidvalidity)) {
      FUNC1(conn->data, "Mailbox UIDVALIDITY has changed");
      result = CURLE_REMOTE_FILE_NOT_FOUND;
    }
    else {
      /* Note the currently opened mailbox on this connection */
      imapc->mailbox = FUNC7(imap->mailbox);

      if(imap->custom)
        result = FUNC3(conn);
      else if(imap->query)
        result = FUNC4(conn);
      else
        result = FUNC2(conn);
    }
  }
  else {
    FUNC1(data, "Select failed");
    result = CURLE_LOGIN_DENIED;
  }

  return result;
}