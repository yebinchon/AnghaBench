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
struct TYPE_4__ {int length; void* coeff; } ;
typedef  TYPE_1__ SwsVector ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 void* FUNC1 (int) ; 

SwsVector *FUNC2(int length)
{
    SwsVector *vec;

    if(length <= 0 || length > INT_MAX/ sizeof(double))
        return NULL;

    vec = FUNC1(sizeof(SwsVector));
    if (!vec)
        return NULL;
    vec->length = length;
    vec->coeff  = FUNC1(sizeof(double) * length);
    if (!vec->coeff)
        FUNC0(&vec);
    return vec;
}