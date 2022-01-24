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
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  pShellServer ; 
 void** shellList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(void *param, void *tmrId) {
  int32_t vnode = *(int32_t*) param;
  FUNC0(pShellServer, vnode); // close connection
  FUNC1 (shellList[vnode]);  //free SShellObj

  FUNC1(param);
}