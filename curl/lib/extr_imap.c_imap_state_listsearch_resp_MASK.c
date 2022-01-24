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
struct connectdata {TYPE_2__* data; } ;
typedef  int /*<<< orphan*/  imapstate ;
struct TYPE_3__ {char* buffer; } ;
struct TYPE_4__ {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENTWRITE_BODY ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_QUOTE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,int /*<<< orphan*/ ,char*,size_t) ; 
 int IMAP_RESP_OK ; 
 int /*<<< orphan*/  IMAP_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static CURLcode FUNC3(struct connectdata *conn,
                                           int imapcode,
                                           imapstate instate)
{
  CURLcode result = CURLE_OK;
  char *line = conn->data->state.buffer;
  size_t len = FUNC2(line);

  (void)instate; /* No use for this yet */

  if(imapcode == '*') {
    /* Temporarily add the LF character back and send as body to the client */
    line[len] = '\n';
    result = FUNC0(conn, CLIENTWRITE_BODY, line, len + 1);
    line[len] = '\0';
  }
  else if(imapcode != IMAP_RESP_OK)
    result = CURLE_QUOTE_ERROR;
  else
    /* End of DO phase */
    FUNC1(conn, IMAP_STOP);

  return result;
}