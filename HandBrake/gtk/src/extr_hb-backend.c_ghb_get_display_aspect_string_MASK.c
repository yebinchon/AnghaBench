#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int gint ;
typedef  char gchar ;

/* Variables and functions */
 char* FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,double,double) ; 

char *
FUNC2(double disp_width, double disp_height)
{
    gchar *str;

    gint iaspect = disp_width * 9 / disp_height;
    if (disp_width > 2 * disp_height)
    {
        str = FUNC0("%.2f:1", disp_width / disp_height);
    }
    else if (iaspect <= 16 && iaspect >= 15)
    {
        str = FUNC0("%.4g:9", disp_width * 9 / disp_height);
    }
    else if (iaspect <= 12 && iaspect >= 11)
    {
        str = FUNC0("%.4g:3", disp_width * 3 / disp_height);
    }
    else
    {
        gint dar_width, dar_height;
        FUNC1(&dar_width, &dar_height, disp_width, disp_height);
        str = FUNC0("%d:%d", dar_width, dar_height);
    }
    return str;
}