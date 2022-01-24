#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(FILE * fp)
{
   int i = 0;
   u32 val = 0;
   IOCheck_struct check = { 0, 0 };

   for (i = 0; i < 8; i++)
   {
      FUNC6(&check, (void *)&val, sizeof(u32), 1, fp);
      FUNC1(state, i, val);
   }

   for (i = 0; i < 8; i++)
   {
      FUNC6(&check, (void *)&val, sizeof(u32), 1, fp);
      FUNC0(state, i, val);
   }

   FUNC6(&check, (void *)&val, sizeof(u32), 1, fp);
   FUNC2(state, val);

   FUNC6(&check, (void *)&val, sizeof(u32), 1, fp);
   FUNC3(state, val);

   FUNC6(&check, (void *)&val, sizeof(u32), 1, fp);
   FUNC5(state, val);

   FUNC6(&check, (void *)&val, sizeof(u32), 1, fp);
   FUNC4(state, val);
}