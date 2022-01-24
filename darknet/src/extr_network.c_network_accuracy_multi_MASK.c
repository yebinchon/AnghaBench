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
typedef  int /*<<< orphan*/  network ;
typedef  int /*<<< orphan*/  matrix ;
struct TYPE_4__ {int /*<<< orphan*/  y; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__,int) ; 

float FUNC3(network *net, data d, int n)
{
    matrix guess = FUNC2(net, d, n);
    float acc = FUNC1(d.y, guess,1);
    FUNC0(guess);
    return acc;
}