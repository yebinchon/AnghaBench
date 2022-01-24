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
struct TYPE_4__ {char** data; int num_alloc; int /*<<< orphan*/  c; } ;
typedef  int /*<<< orphan*/  OPENSSL_sk_compfunc ;
typedef  TYPE_1__ OPENSSL_STACK ;

/* Variables and functions */
 int MIN_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SSL_STACK_ERROR_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int) ; 

OPENSSL_STACK* FUNC3(OPENSSL_sk_compfunc c)
{
    OPENSSL_STACK *stack;
    char **data;

    stack = FUNC2(sizeof(OPENSSL_STACK));
    if (!stack) {
        FUNC0(SSL_STACK_ERROR_LEVEL, "no enough memory > (stack)");
        goto no_mem1;
    }

    data = FUNC2(sizeof(*data) * MIN_NODES);
    if (!data) {
        FUNC0(SSL_STACK_ERROR_LEVEL, "no enough memory > (data)");
        goto no_mem2;
    }

    stack->data = data;
    stack->num_alloc = MIN_NODES;
    stack->c = c;

    return stack;

no_mem2:
    FUNC1(stack);
no_mem1:
    return NULL;
}