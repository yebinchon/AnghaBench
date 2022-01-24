#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guint ;
typedef  TYPE_1__* gpointer ;
typedef  int /*<<< orphan*/  gint ;
typedef  char gchar ;
struct TYPE_8__ {int /*<<< orphan*/ * mbp_menu_item; int /*<<< orphan*/  mbp_menu; int /*<<< orphan*/ * mbpList; } ;
typedef  TYPE_1__ YuiSh ;
struct TYPE_9__ {scalar_t__ type; int button; int /*<<< orphan*/  time; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkMenu ;
typedef  TYPE_3__ GdkEventButton ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GDK_BUTTON_PRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_TYPE_CHECK_MENU_ITEM ; 
 int /*<<< orphan*/  G_SIGNAL_MATCH_DATA ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 

gint FUNC17(GtkWidget * widget, GdkEventButton * event, gpointer data)
{
  GtkMenu *menu;
  GdkEventButton *event_button;
  YuiSh * sh2 = data;
  GtkTreeView * view;
  GtkTreeSelection * selection;
  GtkTreeIter iter;
  GtkTreeModel * model;
  gchar * flags_s;
  char *endptr;
  int i;
  guint signal_id;

  FUNC3 (data != NULL, FALSE);
  FUNC3 (event != NULL, FALSE);

  view  = FUNC2(sh2->mbpList);
  menu = FUNC1(sh2->mbp_menu);

  if (event->type == GDK_BUTTON_PRESS) {
      event_button = (GdkEventButton *) event;
      if (event_button->button == 3) {

           GtkTreePath *path;

	  selection = FUNC16(view);

           if (FUNC15(FUNC2(view), event->x, event->y, &path, NULL, NULL, NULL)) {
               FUNC14(selection);
               FUNC13(selection, path);
               FUNC10(path);
           } 

	  FUNC12(selection, &model, &iter);

          if (FUNC11(selection) == 0) return FALSE;

	  FUNC9(model, &iter, 1, &flags_s, -1);

          signal_id = FUNC6("activate", GTK_TYPE_CHECK_MENU_ITEM);

          for(i = 0;i < 6;i++) FUNC4(sh2->mbp_menu_item[i], G_SIGNAL_MATCH_DATA, signal_id, 0, NULL, NULL, sh2);

          for(i = 0;i < 6;i++) FUNC7(FUNC0(sh2->mbp_menu_item[i]), FALSE);

          endptr = flags_s;
          while ( *endptr ) {
              switch (*endptr) {
	
                  case 'b': FUNC7(FUNC0(sh2->mbp_menu_item[0]), TRUE); break;
                  case 'w': FUNC7(FUNC0(sh2->mbp_menu_item[1]), TRUE); break;
                  case 'l': FUNC7(FUNC0(sh2->mbp_menu_item[2]), TRUE); break;
                  case 'B': FUNC7(FUNC0(sh2->mbp_menu_item[3]), TRUE); break;
                  case 'W': FUNC7(FUNC0(sh2->mbp_menu_item[4]), TRUE); break;
                  case 'L': FUNC7(FUNC0(sh2->mbp_menu_item[5]), TRUE); break;
              }
              endptr++;
          }

          for(i = 0;i < 6;i++) FUNC5(sh2->mbp_menu_item[i], G_SIGNAL_MATCH_DATA, signal_id, 0, NULL, NULL, sh2);

	  FUNC8 (menu, NULL, NULL, NULL, NULL, event_button->button, event_button->time);
      }
  }

  return FALSE;
}