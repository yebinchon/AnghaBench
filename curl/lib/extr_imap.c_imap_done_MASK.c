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
struct TYPE_9__ {int /*<<< orphan*/  pp; } ;
struct TYPE_10__ {TYPE_4__ imapc; } ;
struct connectdata {TYPE_5__ proto; struct Curl_easy* data; } ;
struct IMAP {int /*<<< orphan*/  transfer; scalar_t__ custom_params; scalar_t__ custom; scalar_t__ query; scalar_t__ partial; scalar_t__ section; scalar_t__ mindex; scalar_t__ uid; scalar_t__ uidvalidity; scalar_t__ mailbox; } ;
struct TYPE_7__ {scalar_t__ kind; } ;
struct TYPE_8__ {TYPE_2__ mimepost; scalar_t__ upload; int /*<<< orphan*/  connect_only; } ;
struct TYPE_6__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_3__ set; TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTPTRANSFER_BODY ; 
 int /*<<< orphan*/  IMAP_APPEND_FINAL ; 
 int /*<<< orphan*/  IMAP_FETCH_FINAL ; 
 scalar_t__ MIMEKIND_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,char*) ; 
 scalar_t__ FUNC3 (struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn, CURLcode status,
                          bool premature)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;

  (void)premature;

  if(!imap)
    return CURLE_OK;

  if(status) {
    FUNC2(conn, "IMAP done with bad status"); /* marked for closure */
    result = status;         /* use the already set error code */
  }
  else if(!data->set.connect_only && !imap->custom &&
          (imap->uid || imap->mindex || data->set.upload ||
          data->set.mimepost.kind != MIMEKIND_NONE)) {
    /* Handle responses after FETCH or APPEND transfer has finished */

    if(!data->set.upload && data->set.mimepost.kind == MIMEKIND_NONE)
      FUNC4(conn, IMAP_FETCH_FINAL);
    else {
      /* End the APPEND command first by sending an empty line */
      result = FUNC0(&conn->proto.imapc.pp, "%s", "");
      if(!result)
        FUNC4(conn, IMAP_APPEND_FINAL);
    }

    /* Run the state-machine */
    if(!result)
      result = FUNC3(conn, FALSE);
  }

  /* Cleanup our per-request based variables */
  FUNC1(imap->mailbox);
  FUNC1(imap->uidvalidity);
  FUNC1(imap->uid);
  FUNC1(imap->mindex);
  FUNC1(imap->section);
  FUNC1(imap->partial);
  FUNC1(imap->query);
  FUNC1(imap->custom);
  FUNC1(imap->custom_params);

  /* Clear the transfer mode for the next request */
  imap->transfer = FTPTRANSFER_BODY;

  return result;
}