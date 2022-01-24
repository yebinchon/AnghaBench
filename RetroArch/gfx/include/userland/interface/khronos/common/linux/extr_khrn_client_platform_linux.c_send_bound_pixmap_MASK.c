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
struct TYPE_2__ {int used; int /*<<< orphan*/  pixmap; scalar_t__ egl_image; } ;
typedef  int /*<<< orphan*/  KHRN_IMAGE_WRAP_T ;

/* Variables and functions */
 int NUM_PIXMAP_BINDINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* pixmap_binding ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static void FUNC5(int i)
{
   KHRN_IMAGE_WRAP_T image;

   FUNC4("send_bound_pixmap %d %d", i, (int)pixmap_binding[i].egl_image);

   FUNC3(i >= 0 && i < NUM_PIXMAP_BINDINGS);
   FUNC3(pixmap_binding[i].used);

   FUNC1(pixmap_binding[i].pixmap, &image);
   FUNC2(pixmap_binding[i].egl_image, &image);
   FUNC0(pixmap_binding[i].pixmap, &image);
}