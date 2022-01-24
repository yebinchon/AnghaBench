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
struct imap_conn {int /*<<< orphan*/  mailbox_uidvalidity; int /*<<< orphan*/  mailbox; } ;
struct TYPE_4__ {struct imap_conn imapc; } ;
struct connectdata {struct Curl_easy* data; TYPE_2__ proto; } ;
struct IMAP {int /*<<< orphan*/  mailbox; } ;
struct TYPE_3__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLE_URL_MALFORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMAP_SELECT ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;
  struct imap_conn *imapc = &conn->proto.imapc;
  char *mailbox;

  /* Invalidate old information as we are switching mailboxes */
  FUNC0(imapc->mailbox);
  FUNC0(imapc->mailbox_uidvalidity);

  /* Check we have a mailbox */
  if(!imap->mailbox) {
    FUNC1(conn->data, "Cannot SELECT without a mailbox.");
    return CURLE_URL_MALFORMAT;
  }

  /* Make sure the mailbox is in the correct atom format */
  mailbox = FUNC3(imap->mailbox, false);
  if(!mailbox)
    return CURLE_OUT_OF_MEMORY;

  /* Send the SELECT command */
  result = FUNC4(conn, "SELECT %s", mailbox);

  FUNC2(mailbox);

  if(!result)
    FUNC5(conn, IMAP_SELECT);

  return result;
}