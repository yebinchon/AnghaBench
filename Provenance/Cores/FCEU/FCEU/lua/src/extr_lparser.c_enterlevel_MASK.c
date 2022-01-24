#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* L; } ;
struct TYPE_5__ {scalar_t__ nCcalls; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 scalar_t__ LUAI_MAXCCALLS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1 (LexState *ls) {
  if (++ls->L->nCcalls > LUAI_MAXCCALLS)
	FUNC0(ls, "chunk has too many syntax levels", 0);
}