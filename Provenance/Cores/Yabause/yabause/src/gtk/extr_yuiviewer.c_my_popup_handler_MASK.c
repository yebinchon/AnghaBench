#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int button; int /*<<< orphan*/  time; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkMenu ;
typedef  TYPE_1__ GdkEventButton ;
typedef  TYPE_2__ GdkEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GDK_BUTTON_PRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gint
FUNC4 (GtkWidget *widget, GdkEvent *event)
{
  GtkMenu *menu;
  GdkEventButton *event_button;

  FUNC2 (widget != NULL, FALSE);
  FUNC2 (FUNC0 (widget), FALSE);
  FUNC2 (event != NULL, FALSE);

  /* The "widget" is the menu that was supplied when 
 *    * g_signal_connect_swapped() was called.
 *       */
  menu = FUNC1 (widget);

  if (event->type == GDK_BUTTON_PRESS)
    {
      event_button = (GdkEventButton *) event;
      if (event_button->button == 3)
	{
	  FUNC3 (menu, NULL, NULL, NULL, NULL, 
			  event_button->button, event_button->time);
	  return TRUE;
	}
    }

  return FALSE;
}