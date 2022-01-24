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
typedef  int /*<<< orphan*/  client ;
struct TYPE_4__ {int aof_child_pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  err; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 () ; 
 TYPE_2__ server ; 
 TYPE_1__ shared ; 

void FUNC4(client *c) {
    if (server.aof_child_pid != -1) {
        FUNC1(c,"Background append only file rewriting already in progress");
    } else if (FUNC3() == C_OK) {
        FUNC2(c,"Background append only file rewriting started");
    } else {
        FUNC0(c,shared.err);
    }
}