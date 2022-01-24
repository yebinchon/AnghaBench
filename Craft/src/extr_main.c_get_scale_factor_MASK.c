#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 TYPE_1__* g ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 

int FUNC4() {
    int window_width, window_height;
    int buffer_width, buffer_height;
    FUNC3(g->window, &window_width, &window_height);
    FUNC2(g->window, &buffer_width, &buffer_height);
    int result = buffer_width / window_width;
    result = FUNC0(1, result);
    result = FUNC1(2, result);
    return result;
}