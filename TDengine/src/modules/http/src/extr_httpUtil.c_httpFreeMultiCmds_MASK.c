#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* cmds; struct TYPE_5__* buffer; } ;
struct TYPE_4__ {TYPE_3__* multiCmds; } ;
typedef  TYPE_1__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 

void FUNC1(HttpContext *pContext) {
  if (pContext->multiCmds != NULL) {
    if (pContext->multiCmds->buffer != NULL) FUNC0(pContext->multiCmds->buffer);
    if (pContext->multiCmds->cmds != NULL) FUNC0(pContext->multiCmds->cmds);
    FUNC0(pContext->multiCmds);
    pContext->multiCmds = NULL;
  }
}