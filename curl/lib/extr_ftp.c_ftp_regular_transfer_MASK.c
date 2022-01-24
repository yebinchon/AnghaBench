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
struct ftp_conn {int /*<<< orphan*/  ctl_valid; } ;
struct TYPE_4__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct TYPE_3__ {int size; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct ftp_conn*) ; 
 scalar_t__ FUNC5 (struct connectdata*,int) ; 
 scalar_t__ FUNC6 (struct connectdata*,int*,int*) ; 

__attribute__((used)) static
CURLcode FUNC7(struct connectdata *conn,
                              bool *dophase_done)
{
  CURLcode result = CURLE_OK;
  bool connected = FALSE;
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  data->req.size = -1; /* make sure this is unknown at this point */

  FUNC2(data, 0);
  FUNC0(data, 0);
  FUNC3(data, -1);
  FUNC1(data, -1);

  ftpc->ctl_valid = TRUE; /* starts good */

  result = FUNC6(conn,
                       &connected, /* have we connected after PASV/PORT */
                       dophase_done); /* all commands in the DO-phase done? */

  if(!result) {

    if(!*dophase_done)
      /* the DO phase has not completed yet */
      return CURLE_OK;

    result = FUNC5(conn, connected);

    if(result)
      return result;
  }
  else
    FUNC4(ftpc);

  return result;
}