#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; struct TYPE_9__* base; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 scalar_t__ TYPE_CONST ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

Type *FUNC2(Type *type, Type *qual) {
    type = FUNC1(type);
    while (qual->kind == TYPE_CONST) {
        type = FUNC0(type);
        qual = qual->base;
    }
    return type;
}