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
typedef  int /*<<< orphan*/  u32 ;
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
struct TYPE_4__ {int cursor; int /*<<< orphan*/  buffer; int /*<<< orphan*/  image; } ;
typedef  TYPE_1__ YuiVdp2 ;

/* Variables and functions */
 int VDP2_DEBUG_STRING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(YuiVdp2 * vdp2) {
	gchar nameTemp[VDP2_DEBUG_STRING_SIZE];
	gboolean isscrenabled;

	FUNC10(FUNC7(vdp2->image));

	switch(vdp2->cursor) {
		case 0:
			FUNC0(nameTemp, &isscrenabled);  
			break;
		case 1:
			FUNC1(nameTemp, &isscrenabled);  
			break;
		case 2:
			FUNC2(nameTemp, &isscrenabled);  
			break;
		case 3:
			FUNC3(nameTemp, &isscrenabled);  
			break;
		case 4:
			FUNC4(nameTemp, &isscrenabled);  
			break;
		case 5:
			FUNC5(nameTemp, &isscrenabled);  
			break;
	}

	if (vdp2->cursor > 0) {
		u32 * texture;
		int w, h;
		texture = FUNC6(vdp2->cursor - 1, &w, &h);
		FUNC9(vdp2, texture, w, h);
	}

	if (isscrenabled) {
		FUNC8(vdp2->buffer, nameTemp, -1);
	} else {
		FUNC8(vdp2->buffer, "", -1);
	}
}