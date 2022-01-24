#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct imap_conn {scalar_t__ mailbox_uidvalidity; scalar_t__ mailbox; } ;
struct TYPE_10__ {int* tcpconnect; } ;
struct TYPE_7__ {struct imap_conn imapc; } ;
struct connectdata {struct Curl_easy* data; TYPE_5__ bits; TYPE_2__ proto; } ;
struct IMAP {scalar_t__ query; scalar_t__ mindex; scalar_t__ uid; scalar_t__ custom; scalar_t__ mailbox; scalar_t__ uidvalidity; int /*<<< orphan*/  transfer; } ;
struct TYPE_8__ {scalar_t__ kind; } ;
struct TYPE_9__ {TYPE_3__ mimepost; scalar_t__ upload; scalar_t__ opt_no_body; } ;
struct TYPE_6__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_4__ set; TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 size_t FIRSTSOCKET ; 
 int /*<<< orphan*/  FTPTRANSFER_INFO ; 
 scalar_t__ MIMEKIND_NONE ; 
 int TRUE ; 
 scalar_t__ FUNC1 (struct connectdata*,int*) ; 
 scalar_t__ FUNC2 (struct connectdata*) ; 
 scalar_t__ FUNC3 (struct connectdata*) ; 
 scalar_t__ FUNC4 (struct connectdata*) ; 
 scalar_t__ FUNC5 (struct connectdata*) ; 
 scalar_t__ FUNC6 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,char*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static CURLcode FUNC9(struct connectdata *conn, bool *connected,
                             bool *dophase_done)
{
  /* This is IMAP and no proxy */
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;
  struct imap_conn *imapc = &conn->proto.imapc;
  bool selected = FALSE;

  FUNC0(FUNC7(conn->data, "DO phase starts\n"));

  if(conn->data->set.opt_no_body) {
    /* Requested no body means no transfer */
    imap->transfer = FTPTRANSFER_INFO;
  }

  *dophase_done = FALSE; /* not done yet */

  /* Determine if the requested mailbox (with the same UIDVALIDITY if set)
     has already been selected on this connection */
  if(imap->mailbox && imapc->mailbox &&
     FUNC8(imap->mailbox, imapc->mailbox) &&
     (!imap->uidvalidity || !imapc->mailbox_uidvalidity ||
      FUNC8(imap->uidvalidity, imapc->mailbox_uidvalidity)))
    selected = TRUE;

  /* Start the first command in the DO phase */
  if(conn->data->set.upload || data->set.mimepost.kind != MIMEKIND_NONE)
    /* APPEND can be executed directly */
    result = FUNC2(conn);
  else if(imap->custom && (selected || !imap->mailbox))
    /* Custom command using the same mailbox or no mailbox */
    result = FUNC4(conn);
  else if(!imap->custom && selected && (imap->uid || imap->mindex))
    /* FETCH from the same mailbox */
    result = FUNC3(conn);
  else if(!imap->custom && selected && imap->query)
    /* SEARCH the current mailbox */
    result = FUNC5(conn);
  else if(imap->mailbox && !selected &&
         (imap->custom || imap->uid || imap->mindex || imap->query))
    /* SELECT the mailbox */
    result = FUNC6(conn);
  else
    /* LIST */
    result = FUNC4(conn);

  if(result)
    return result;

  /* Run the state-machine */
  result = FUNC1(conn, dophase_done);

  *connected = conn->bits.tcpconnect[FIRSTSOCKET];

  if(*dophase_done)
    FUNC0(FUNC7(conn->data, "DO phase is complete\n"));

  return result;
}