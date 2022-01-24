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
struct pingpong {int dummy; } ;
struct ftp_conn {int /*<<< orphan*/ * server_os; int /*<<< orphan*/ * prevpath; int /*<<< orphan*/ * entrypath; int /*<<< orphan*/  ctl_valid; struct pingpong pp; } ;
struct TYPE_3__ {struct ftp_conn ftpc; } ;
struct connectdata {struct Curl_easy* data; TYPE_1__ proto; } ;
struct TYPE_4__ {int /*<<< orphan*/ * most_recent_ftp_entrypath; } ;
struct Curl_easy {TYPE_2__ state; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct pingpong*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ftp_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn, bool dead_connection)
{
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  struct pingpong *pp = &ftpc->pp;

  /* We cannot send quit unconditionally. If this connection is stale or
     bad in any way, sending quit and waiting around here will make the
     disconnect wait in vain and cause more problems than we need to.

     ftp_quit() will check the state of ftp->ctl_valid. If it's ok it
     will try to send the QUIT command, otherwise it will just return.
  */
  if(dead_connection)
    ftpc->ctl_valid = FALSE;

  /* The FTP session may or may not have been allocated/setup at this point! */
  (void)FUNC4(conn); /* ignore errors on the QUIT */

  if(ftpc->entrypath) {
    struct Curl_easy *data = conn->data;
    if(data->state.most_recent_ftp_entrypath == ftpc->entrypath) {
      data->state.most_recent_ftp_entrypath = NULL;
    }
    FUNC2(ftpc->entrypath);
    ftpc->entrypath = NULL;
  }

  FUNC3(ftpc);
  FUNC2(ftpc->prevpath);
  ftpc->prevpath = NULL;
  FUNC2(ftpc->server_os);
  ftpc->server_os = NULL;

  FUNC0(pp);

#ifdef HAVE_GSSAPI
  Curl_sec_end(conn);
#endif

  return CURLE_OK;
}