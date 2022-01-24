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
struct TYPE_2__ {int /*<<< orphan*/  combo; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PerMouseNames ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int,double) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  mouse_speed_change ; 
 int /*<<< orphan*/  mousepercores ; 
 int /*<<< orphan*/  percore_changed ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(GtkWidget * box)
{
   GtkWidget * scale;
   GtkWidget * table5;
   GtkWidget * box_percore = FUNC13(FALSE, 10);
   GtkWidget * select_percore = FUNC17(keyfile, "General", "MousePerCore", mousepercores);
   GList * entrylist = NULL;

   FUNC10(FUNC2(select_percore), 0);
   FUNC10(FUNC2(box_percore), 10);
   FUNC9(FUNC0 (box_percore), select_percore, FALSE, FALSE, 0);

   scale = FUNC11(0, 10, 0.1);
   FUNC12(FUNC3(scale), FUNC6(keyfile, "General", "MouseSpeed", NULL));
   FUNC8(scale, "value-changed", FUNC4(mouse_speed_change), NULL);
   FUNC9(FUNC0 (box_percore), scale, FALSE, FALSE, 0);

   FUNC9 (FUNC0 (box), box_percore, TRUE, TRUE, 0);

   FUNC9 (FUNC0 (box), FUNC14(), TRUE, TRUE, 0);

   table5 = FUNC16(keyfile, "Mouse", PerMouseNames);
   entrylist = FUNC7(entrylist, table5);
   FUNC10(FUNC2(table5), 10);
   FUNC9 (FUNC0 (box), table5, TRUE, TRUE, 0);

   FUNC8(FUNC1(FUNC5(select_percore)->combo), "changed", FUNC4(percore_changed), entrylist);
   FUNC15(box);
}