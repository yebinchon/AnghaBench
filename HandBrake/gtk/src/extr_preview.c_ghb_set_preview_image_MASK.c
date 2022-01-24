#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  builder; TYPE_1__* preview; } ;
typedef  TYPE_2__ signal_user_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  pix; int /*<<< orphan*/  scaled_pix; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC5(signal_user_data_t *ud)
{
    FUNC3(ud);

    // Scale and display the mini-preview
    FUNC4(ud, ud->preview->pix);

    // Scale the full size preview
    ud->preview->scaled_pix = FUNC1(ud, ud->preview->pix);

    // Display full size preview
    GtkWidget *widget = FUNC0(ud->builder, "preview_image");
    FUNC2(widget);
}