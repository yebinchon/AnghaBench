#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pp; } ;
struct TYPE_6__ {TYPE_1__ smtpc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct SMTP {TYPE_3__* rcpt; } ;
struct TYPE_8__ {struct SMTP* protop; } ;
struct Curl_easy {TYPE_4__ req; } ;
struct TYPE_7__ {char* data; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  SMTP_RCPT ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC2(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct SMTP *smtp = data->req.protop;

  /* Send the RCPT TO command */
  if(smtp->rcpt->data[0] == '<')
    result = FUNC0(&conn->proto.smtpc.pp, "RCPT TO:%s",
                           smtp->rcpt->data);
  else
    result = FUNC0(&conn->proto.smtpc.pp, "RCPT TO:<%s>",
                           smtp->rcpt->data);
  if(!result)
    FUNC1(conn, SMTP_RCPT);

  return result;
}