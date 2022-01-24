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
struct TYPE_7__ {int /*<<< orphan*/  pp; } ;
struct TYPE_8__ {TYPE_2__ ftpc; } ;
struct connectdata {TYPE_5__* data; TYPE_3__ proto; } ;
struct FTP {char* user; } ;
struct TYPE_9__ {int /*<<< orphan*/  ftp_trying_alternative; } ;
struct TYPE_6__ {struct FTP* protop; } ;
struct TYPE_10__ {TYPE_4__ state; TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTP_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC2(struct connectdata *conn)
{
  CURLcode result;
  struct FTP *ftp = conn->data->req.protop;
  /* send USER */
  FUNC0(&conn->proto.ftpc.pp, "USER %s", ftp->user?ftp->user:"");

  FUNC1(conn, FTP_USER);
  conn->data->state.ftp_trying_alternative = FALSE;

  return CURLE_OK;
}