#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* fields; } ;
struct TYPE_19__ {scalar_t__ intrinsic; } ;
struct TYPE_22__ {struct TYPE_22__* base; TYPE_3__ aggregate; TYPE_1__ func; } ;
typedef  TYPE_4__ Type ;
struct TYPE_23__ {TYPE_4__* type; } ;
struct TYPE_20__ {TYPE_4__* type; } ;
typedef  TYPE_5__ Operand ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_5__) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 TYPE_4__* type_any ; 
 TYPE_4__* type_void ; 
 TYPE_4__* FUNC7 (TYPE_4__*) ; 

bool FUNC8(Operand *operand, Type *dest) {
    dest = FUNC7(dest);
    Type *src = FUNC7(operand->type);
    if (dest == src) {
        return true;
    } else if (FUNC3(src) && src->func.intrinsic) {
        return false;
    } else if (dest == type_any || dest == type_void) {
        return true;
    } else if (FUNC1(dest) && FUNC1(src)) {
        return true;
    } else if (FUNC5(dest) && FUNC4(*operand)) {
        return true;
    } else if (FUNC6(dest) && FUNC6(src)) {
        if (FUNC2(dest->base) && FUNC2(src->base)) {
            return dest->base->base == src->base->base || dest->base->base == type_void || src->base->base == type_void;
        } else if (FUNC0(dest->base) && FUNC0(src->base) && dest->base == src->base->aggregate.fields[0].type) {
            return true;
        } else {
            Type *unqual_dest_base = FUNC7(dest->base);
            if (unqual_dest_base == src->base) {
                return true;
            } else if (unqual_dest_base == type_void) {
                return FUNC2(dest->base) || !FUNC2(src->base);
            } else {
                return src->base == type_void;
            }
        }
    } else {
        return false;
    }
}