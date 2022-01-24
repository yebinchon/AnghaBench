#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; TYPE_3__* pConn; } ;
struct TYPE_8__ {scalar_t__ ip; short port; TYPE_1__* pSList; scalar_t__ streamId; struct TYPE_8__* next; TYPE_4__* pAcct; } ;
struct TYPE_7__ {scalar_t__ streamId; } ;
struct TYPE_6__ {int numOfStreams; TYPE_2__* sdesc; } ;
typedef  TYPE_2__ SSDesc ;
typedef  TYPE_3__ SConnObj ;
typedef  TYPE_4__ SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_INVALID_STREAM_ID ; 
 scalar_t__ FUNC0 (char*) ; 
 short FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int FUNC8(char *qidstr, SConnObj *pConn) {
  char *temp, *chr, idstr[64];
  FUNC7(idstr, qidstr);

  temp = idstr;
  chr = FUNC6(temp, ':');
  if (chr == NULL) goto _error;
  *chr = 0;
  uint32_t ip = FUNC2(temp);

  temp = chr + 1;
  chr = FUNC6(temp, ':');
  if (chr == NULL) goto _error;
  *chr = 0;
  short port = FUNC1(FUNC0(temp));

  temp = chr + 1;
  uint32_t streamId = FUNC0(temp);

  SAcctObj *pAcct = pConn->pAcct;

  FUNC4(&pAcct->mutex);

  pConn = pAcct->pConn;
  while (pConn) {
    if (pConn->ip == ip && pConn->port == port && pConn->pSList) {
      int     i;
      SSDesc *pSDesc = pConn->pSList->sdesc;
      for (i = 0; i < pConn->pSList->numOfStreams; ++i, ++pSDesc) {
        if (pSDesc->streamId == streamId) break;
      }

      if (i < pConn->pSList->numOfStreams) break;
    }

    pConn = pConn->next;
  }

  if (pConn) pConn->streamId = streamId;

  FUNC5(&pAcct->mutex);

  if (pConn == NULL || pConn->pSList == NULL || pConn->pSList->numOfStreams == 0) goto _error;

  FUNC3("stream:%s is there, kill it", qidstr);
  return 0;

_error:
  FUNC3("stream:%s is not there", qidstr);

  return TSDB_CODE_INVALID_STREAM_ID;
}