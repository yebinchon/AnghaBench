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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_5__ {int sheet_image; } ;
typedef  TYPE_1__ sys_fontheader ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_FONTSIZE_ANSI ; 
 int /*<<< orphan*/  SYS_FONTSIZE_SJIS ; 
 int FUNC0 () ; 
 int FUNC1 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sys_fontimage ; 

u32 FUNC4(sys_fontheader *font_data)
{
	void *packed_data = NULL;

	if(!font_data) return 0;

	if(FUNC0()==1) {
		FUNC3(font_data,0,SYS_FONTSIZE_SJIS);
		packed_data = (void*)((u32)font_data+868096);
	} else {
		FUNC3(font_data,0,SYS_FONTSIZE_ANSI);
		packed_data = (void*)((u32)font_data+119072);
	}

	if(FUNC1(packed_data,font_data)==1) {
		sys_fontimage = (u8*)((((u32)font_data+font_data->sheet_image)+31)&~31);
		FUNC2((u8*)font_data+font_data->sheet_image,sys_fontimage);
		return 1;
	}

	return 0;
}