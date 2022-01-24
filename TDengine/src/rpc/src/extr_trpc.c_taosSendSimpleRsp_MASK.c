#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (void*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 

int FUNC3(void *thandle, char rsptype, char code) {
  char *pMsg, *pStart;
  int   msgLen;

  if (thandle == NULL) {
    FUNC0("connection is gone, response could not be sent");
    return -1;
  }

  pStart = FUNC1(thandle, rsptype, 32);
  pMsg = pStart;

  *pMsg = code;
  pMsg++;

  msgLen = (int)(pMsg - pStart);
  FUNC2(thandle, pStart, msgLen);

  return msgLen;
}