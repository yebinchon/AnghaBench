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
struct TYPE_5__ {scalar_t__ ull; } ;
struct TYPE_6__ {TYPE_1__ val; int /*<<< orphan*/  type; scalar_t__ is_const; } ;
typedef  TYPE_2__ Operand ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_ullong ; 

bool FUNC3(Operand operand) {
    if (operand.is_const && (FUNC2(operand.type) || FUNC1(operand.type))) {
        FUNC0(&operand, type_ullong);
        return operand.val.ull == 0;
    } else {
        return false;
    }
}