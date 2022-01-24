#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  TYPE_1__* gpointer ;
typedef  char gchar ;
struct TYPE_5__ {int /*<<< orphan*/  debugsh; int /*<<< orphan*/ ** mbp_menu_item; int /*<<< orphan*/  mbpList; } ;
typedef  TYPE_1__ YuiSh ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int BREAK_BYTEREAD ; 
 int BREAK_BYTEWRITE ; 
 int BREAK_LONGREAD ; 
 int BREAK_LONGWRITE ; 
 int BREAK_WORDREAD ; 
 int BREAK_WORDWRITE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int*) ; 

void FUNC8(GtkWidget * menuitem, gpointer user_data) {
	GtkTreeSelection * selection;
	YuiSh * sh2 = user_data;
	GtkTreeIter iter;
	GtkTreeModel * model;
	gchar * address_s, * flags_s;
	unsigned int address;
	u32 flags;
	GtkTreeView * view;
	char *endptr;

	view  = FUNC0(sh2->mbpList);

	  selection = FUNC6(view);

	  FUNC5(selection, &model, &iter);

	  FUNC4(model, &iter, 0, &address_s, -1);
	  FUNC4(model, &iter, 1, &flags_s, -1);
          FUNC7(address_s, "%8X", &address);

          FUNC2(sh2->debugsh, address);

          flags = 0;
          endptr = flags_s;
          while ( *endptr ) {
              switch (*endptr) {
                  case 'b': flags |= BREAK_BYTEREAD; break;
                  case 'w': flags |= BREAK_WORDREAD; break;
                  case 'l': flags |= BREAK_LONGREAD; break;
                  case 'B': flags |= BREAK_BYTEWRITE; break;
                  case 'W': flags |= BREAK_WORDWRITE; break;
                  case 'L': flags |= BREAK_LONGWRITE; break;
              }
              endptr++;
          }

	  if (menuitem == sh2->mbp_menu_item[0]) flags = (flags & ~BREAK_BYTEREAD) | (~flags & BREAK_BYTEREAD);
	  if (menuitem == sh2->mbp_menu_item[1]) flags = (flags & ~BREAK_WORDREAD) | (~flags & BREAK_WORDREAD);
	  if (menuitem == sh2->mbp_menu_item[2]) flags = (flags & ~BREAK_LONGREAD) | (~flags & BREAK_LONGREAD);
	  if (menuitem == sh2->mbp_menu_item[3]) flags = (flags & ~BREAK_BYTEWRITE) | (~flags & BREAK_BYTEWRITE);
	  if (menuitem == sh2->mbp_menu_item[4]) flags = (flags & ~BREAK_WORDWRITE) | (~flags & BREAK_WORDWRITE);
	  if (menuitem == sh2->mbp_menu_item[5]) flags = (flags & ~BREAK_LONGWRITE) | (~flags & BREAK_LONGWRITE);

          FUNC1(sh2->debugsh, address, flags);

	FUNC3(sh2);
}