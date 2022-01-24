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

/* Variables and functions */
 TYPE_1__* monitor ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,float,float,int) ; 
 int FUNC2 (float*) ; 
 int FUNC3 (float*) ; 
 int tsTotalMemoryMB ; 

int FUNC4(char *sql) {
  float sysMemoryUsedMB = 0;
  bool  suc = FUNC3(&sysMemoryUsedMB);
  if (!suc) {
    FUNC0("monitor:%p, get sys memory info failed.", monitor->conn);
  }

  float procMemoryUsedMB = 0;
  suc = FUNC2(&procMemoryUsedMB);
  if (!suc) {
    FUNC0("monitor:%p, get proc memory info failed.", monitor->conn);
  }

  return FUNC1(sql, ", %f, %f, %d", procMemoryUsedMB, sysMemoryUsedMB, tsTotalMemoryMB);
}