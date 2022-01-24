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
typedef  float gdouble ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkScaleButton ;
typedef  int /*<<< orphan*/  GtkAdjustment ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,float,float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 float FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,float*,float*,float*,int*) ; 

__attribute__((used)) static void FUNC5(
    GtkWidget *widget,
    int encoder,
    gboolean set_default,
    gdouble value)
{
    float low, high, gran;
    int dir;

    FUNC4(encoder, &low, &high, &gran, &dir);
    if (set_default)
    {
        value = FUNC3(encoder);
    }
    if (dir)
    {
        // Quality values are inverted
        value = high - value + low;
    }
    GtkScaleButton *sb;
    GtkAdjustment *adj;
    sb = FUNC0(widget);
    adj = FUNC2(sb);
    FUNC1 (adj, value, low, high, gran, gran, 0);
}