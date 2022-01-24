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
struct TYPE_5__ {scalar_t__ table; } ;
struct TYPE_4__ {TYPE_3__ vlc; int /*<<< orphan*/  recode; } ;
typedef  TYPE_1__ TM2Codes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(TM2Codes *code)
{
    FUNC0(code->recode);
    if (code->vlc.table)
        FUNC1(&code->vlc);
}