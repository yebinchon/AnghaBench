#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int length; scalar_t__* coeff; } ;
typedef  TYPE_1__ SwsVector ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (double,int) ; 

__attribute__((used)) static SwsVector *FUNC2(SwsVector *a, SwsVector *b)
{
    int length = FUNC0(a->length, b->length);
    int i;
    SwsVector *vec = FUNC1(0.0, length);

    if (!vec)
        return NULL;

    for (i = 0; i < a->length; i++)
        vec->coeff[i + (length - 1) / 2 - (a->length - 1) / 2] += a->coeff[i];
    for (i = 0; i < b->length; i++)
        vec->coeff[i + (length - 1) / 2 - (b->length - 1) / 2] -= b->coeff[i];

    return vec;
}