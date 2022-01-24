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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  keys1 ; 
 int /*<<< orphan*/  keys2 ; 
 int /*<<< orphan*/  percore_changed ; 
 int /*<<< orphan*/  percores ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(GtkWidget * box)
{
   GtkWidget * table4, * table5;
   GtkWidget * box_percore = FUNC9(FALSE, 10);
   GtkWidget * select_percore = FUNC13(keyfile, "General", "PerCore", percores);
   GList * entrylist = NULL;

   FUNC8(FUNC2(select_percore), 0);

   FUNC8(FUNC2(box_percore), 10);

   FUNC7(FUNC0 (box_percore), select_percore, FALSE, FALSE, 0);

   table4 = FUNC12(keyfile, "Pad", keys1);
   entrylist = FUNC5(entrylist, table4);

   FUNC7 (FUNC0 (box_percore), table4, TRUE, TRUE, 0);

   FUNC7 (FUNC0 (box), box_percore, TRUE, TRUE, 0);

   FUNC7 (FUNC0 (box), FUNC10(), TRUE, TRUE, 0);

   table5 = FUNC12(keyfile, "Pad", keys2);
   entrylist = FUNC5(entrylist, table5);

   FUNC8(FUNC2(table5), 10);
  
   FUNC7 (FUNC0 (box), table5, TRUE, TRUE, 0);

   FUNC6(FUNC1(FUNC4(select_percore)->combo), "changed", FUNC3(percore_changed), entrylist);

   FUNC11(box);
}