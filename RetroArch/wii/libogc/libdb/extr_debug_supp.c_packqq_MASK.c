#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gdbstub_threadinfo {char* display; char* name; char* more_display; } ;
typedef  int s32 ;

/* Variables and functions */
 void** hexchars ; 
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,int) ; 

void FUNC4(char *out,s32 mask,s32 thread,struct gdbstub_threadinfo *info)
{
	s32 len;

	*out++ = 'q';
	*out++ = 'Q';
	out = FUNC0(out,mask);
	out = FUNC3(out,thread);

	if(mask&0x01) {
		FUNC1(out,"00000001",8);
		out += 8;
		*out++ = '1';
		*out++ = '0';
		out = FUNC3(out,thread);
	}
	if(mask&0x02) {
		FUNC1(out,"00000002",8);
		out += 8;
		*out++ = '0';
		*out++ = '1';
		*out++ = '1';
	}
	if(mask&0x04) {
		FUNC1(out,"00000004",8);
		out += 8;

		info->display[sizeof(info->display)-1] = 0;			//for god sake
		len = FUNC2(info->display);

		*out++ = hexchars[(len>>4)&0x0f];
		*out++ = hexchars[len&0x0f];

		FUNC1(out,info->display,len);
		out += len;
	}
	if(mask&0x08) {
		FUNC1(out,"00000008",8);
		out += 8;

		info->display[sizeof(info->name)-1] = 0;			//for god sake
		len = FUNC2(info->name);

		*out++ = hexchars[(len>>4)&0x0f];
		*out++ = hexchars[len&0x0f];

		FUNC1(out,info->name,len);
		out += len;
	}
	if(mask&0x10) {
		FUNC1(out,"00000010",8);
		out += 8;

		info->display[sizeof(info->more_display)-1] = 0;			//for god sake
		len = FUNC2(info->more_display);

		*out++ = hexchars[(len>>4)&0x0f];
		*out++ = hexchars[len&0x0f];

		FUNC1(out,info->more_display,len);
		out += len;
	}
	*out = 0;
}