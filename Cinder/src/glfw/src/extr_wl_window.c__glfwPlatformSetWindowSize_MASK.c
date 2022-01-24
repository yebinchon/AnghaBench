#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int scale; int width; int height; int /*<<< orphan*/  native; } ;
struct TYPE_7__ {TYPE_1__ wl; } ;
typedef  TYPE_2__ _GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(_GLFWwindow* window, int width, int height)
{
    int scaledWidth = width * window->wl.scale;
    int scaledHeight = height * window->wl.scale;
    window->wl.width = width;
    window->wl.height = height;
    FUNC2(window->wl.native, scaledWidth, scaledHeight, 0, 0);
    FUNC1(window);
    FUNC0(window, scaledWidth, scaledHeight);
}