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
struct TYPE_4__ {int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  double gint ;
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (double,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

void
FUNC5(signal_user_data_t *ud)
{
    gint width, disp_height;
    gint par_num, par_den;
    double disp_width;
    gchar *str;

    width  = FUNC1(ud->settings, "scale_width");
    disp_height = FUNC1(ud->settings, "scale_height");
    par_num = FUNC1(ud->settings, "PicturePARWidth");
    par_den = FUNC1(ud->settings, "PicturePARHeight");
    disp_width = (double)width * par_num / par_den;
    str        = FUNC2(disp_width, disp_height);
    FUNC4(ud, "display_aspect", FUNC3(str));
    FUNC0(str);
}