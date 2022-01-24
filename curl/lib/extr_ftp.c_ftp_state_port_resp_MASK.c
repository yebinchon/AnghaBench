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
struct ftp_conn {int /*<<< orphan*/  count1; } ;
struct TYPE_3__ {int /*<<< orphan*/  ftp_use_eprt; } ;
struct TYPE_4__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ bits; TYPE_2__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef  scalar_t__ ftpport ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_FTP_PORT_FAILED ; 
 int /*<<< orphan*/  CURLE_OK ; 
 scalar_t__ DONE ; 
 scalar_t__ EPRT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTP_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn,
                                    int ftpcode)
{
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  ftpport fcmd = (ftpport)ftpc->count1;
  CURLcode result = CURLE_OK;

  /* The FTP spec tells a positive response should have code 200.
     Be more permissive here to tolerate deviant servers. */
  if(ftpcode / 100 != 2) {
    /* the command failed */

    if(EPRT == fcmd) {
      FUNC3(data, "disabling EPRT usage\n");
      conn->bits.ftp_use_eprt = FALSE;
    }
    fcmd++;

    if(fcmd == DONE) {
      FUNC0(data, "Failed to do PORT");
      result = CURLE_FTP_PORT_FAILED;
    }
    else
      /* try next */
      result = FUNC2(conn, fcmd);
  }
  else {
    FUNC3(data, "Connect data stream actively\n");
    FUNC4(conn, FTP_STOP); /* end of DO phase */
    result = FUNC1(conn, FALSE);
  }

  return result;
}