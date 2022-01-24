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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  MyGdkRectangle ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkCellRendererState ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;
typedef  int /*<<< orphan*/  GdkEvent ;

/* Variables and functions */
 size_t CLICKED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * button_cell_signals ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static gboolean
FUNC2 (
        GtkCellRenderer         *cell,
        GdkEvent                *event,
        GtkWidget               *widget,
        const gchar             *path,
        MyGdkRectangle          *background_area,
        MyGdkRectangle          *cell_area,
        GtkCellRendererState    flags)
{
    FUNC0("custom_cell_renderer_button_activate ()\n");
    FUNC1 (cell, button_cell_signals[CLICKED], 0, path);
    return TRUE;
}