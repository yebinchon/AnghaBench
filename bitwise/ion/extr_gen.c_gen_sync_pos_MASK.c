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
struct TYPE_4__ {scalar_t__ line; scalar_t__ name; } ;
typedef  TYPE_1__ SrcPos ;

/* Variables and functions */
 scalar_t__ flag_nolinesync ; 
 TYPE_1__ gen_pos ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

void FUNC3(SrcPos pos) {
    if (flag_nolinesync) {
        return;
    }
    if (gen_pos.line != pos.line || gen_pos.name != pos.name) {
        FUNC2("#line %d", pos.line);
        if (gen_pos.name != pos.name) {
            FUNC1(" ");
            FUNC0(pos.name, false);
        }
        gen_pos = pos;
    }
}