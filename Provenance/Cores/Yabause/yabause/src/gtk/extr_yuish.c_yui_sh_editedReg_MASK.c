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
typedef  scalar_t__ u32 ;
typedef  char gchar ;
struct TYPE_4__ {int /*<<< orphan*/  regListStore; } ;
typedef  TYPE_1__ YuiSh ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRendererText ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char**,int) ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10( GtkCellRendererText *cellrenderertext,
			      gchar *arg1,
			      gchar *arg2,
			      YuiSh *sh2) {
  /* registry number <arg1> value has been set to <arg2> */

  GtkTreeIter iter;
  char bptext[10];
  char *endptr;
  int i = FUNC2(arg1);
  u32 addr;

  FUNC4( FUNC1( sh2->regListStore ), &iter, arg1 );
  addr = FUNC8(arg2, &endptr, 16 );
  if ( endptr - arg2 == FUNC7(arg2) ) {
   
    FUNC6(bptext, "%08X", (int)addr);
    FUNC5( sh2, i, addr );
    FUNC3( FUNC0( sh2->regListStore ), &iter, 1, bptext, -1 );
  }
  FUNC9( yui );
}