#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;

/* Variables and functions */
 TYPE_1__* monitor ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC2(void *param, TAOS_RES *result, int code) {
  if (code < 0) {
    FUNC0("monitor:%p, save account info failed, code:%d", monitor->conn, code);
  } else if (code == 0) {
    FUNC0("monitor:%p, save account info failed, affect rows:%d", monitor->conn, code);
  } else {
    FUNC1("monitor:%p, save account info success, code:%d", monitor->conn, code);
  }
}