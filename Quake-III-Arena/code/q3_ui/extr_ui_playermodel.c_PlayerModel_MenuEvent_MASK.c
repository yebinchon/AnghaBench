#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;
struct TYPE_4__ {int /*<<< orphan*/  modelpage; int /*<<< orphan*/  numpages; } ;

/* Variables and functions */
#define  ID_BACK 130 
#define  ID_NEXTPAGE 129 
#define  ID_PREVPAGE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ s_playermodel ; 

__attribute__((used)) static void FUNC3( void* ptr, int event )
{
	if (event != QM_ACTIVATED)
		return;

	switch (((menucommon_s*)ptr)->id)
	{
		case ID_PREVPAGE:
			if (s_playermodel.modelpage > 0)
			{
				s_playermodel.modelpage--;
				FUNC1();
			}
			break;

		case ID_NEXTPAGE:
			if (s_playermodel.modelpage < s_playermodel.numpages-1)
			{
				s_playermodel.modelpage++;
				FUNC1();
			}
			break;

		case ID_BACK:
			FUNC0();
			FUNC2();
			break;
	}
}