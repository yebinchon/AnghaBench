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
struct TYPE_3__ {scalar_t__ maxSessions; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int tsMaxVnode ; 
 int /*<<< orphan*/  tsOpenVnodes ; 
 TYPE_2__* vnodeList ; 

void FUNC1() {
  int openVnodes = 0;
  for (int vnode = 0; vnode <= tsMaxVnode; ++vnode) {
    if (vnodeList[vnode].cfg.maxSessions <= 0) continue;
    openVnodes++;
  }

  FUNC0(&tsOpenVnodes, openVnodes);
}