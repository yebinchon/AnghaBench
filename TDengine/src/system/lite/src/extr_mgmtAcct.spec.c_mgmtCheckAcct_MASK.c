#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  user; scalar_t__ acctId; } ;
typedef  TYPE_1__ SAcctObj ;

/* Variables and functions */
 TYPE_1__ acctObj ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* tsInternalPass ; 

void FUNC2() {
  SAcctObj *pAcct = &acctObj;
  pAcct->acctId = 0;
  FUNC1(pAcct->user, "root");

  FUNC0(pAcct, "root", "taosdata");
  FUNC0(pAcct, "monitor", tsInternalPass);
  FUNC0(pAcct, "_root", tsInternalPass);
}