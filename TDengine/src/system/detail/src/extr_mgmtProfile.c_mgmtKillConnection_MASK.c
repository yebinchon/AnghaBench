#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; TYPE_1__* pConn; } ;
struct TYPE_4__ {scalar_t__ ip; short port; int killConnection; struct TYPE_4__* next; TYPE_2__* pAcct; } ;
typedef  TYPE_1__ SConnObj ;
typedef  TYPE_2__ SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_INVALID_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 short FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int FUNC8(char *qidstr, SConnObj *pConn) {
  SConnObj *pConn1 = NULL;
  char *    temp, *chr, idstr[64];
  FUNC7(idstr, qidstr);

  temp = idstr;
  chr = FUNC6(temp, ':');
  if (chr == NULL) goto _error;
  *chr = 0;
  uint32_t ip = FUNC2(temp);

  temp = chr + 1;
  short port = FUNC1(FUNC0(temp));

  SAcctObj *pAcct = pConn->pAcct;

  FUNC4(&pAcct->mutex);

  pConn = pAcct->pConn;
  while (pConn) {
    if (pConn->ip == ip && pConn->port == port) {
      // there maybe two connections from a shell
      if (pConn1 == NULL)
        pConn1 = pConn;
      else
        break;
    }

    pConn = pConn->next;
  }

  if (pConn1) pConn1->killConnection = 1;
  if (pConn) pConn->killConnection = 1;

  FUNC5(&pAcct->mutex);

  if (pConn1 == NULL) goto _error;

  FUNC3("connection:%s is there, kill it", qidstr);
  return 0;

_error:
  FUNC3("connection:%s is not there", qidstr);

  return TSDB_CODE_INVALID_CONNECTION;
}