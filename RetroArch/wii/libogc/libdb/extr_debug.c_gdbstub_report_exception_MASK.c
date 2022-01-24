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
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_3__ {int /*<<< orphan*/  SRR0; int /*<<< orphan*/ * GPR; int /*<<< orphan*/  EXCPT_Number; } ;
typedef  TYPE_1__ frame_context ;

/* Variables and functions */
 int /*<<< orphan*/  PC_REGNUM ; 
 int /*<<< orphan*/  SP_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*,int) ; 
 char* remcomOutBuffer ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(frame_context *frame,s32 thread)
{
	s32 sigval;
	char *ptr;

	ptr = remcomOutBuffer;
	sigval = FUNC0(frame->EXCPT_Number);
	*ptr++ = 'T';
	*ptr++ = FUNC1(sigval);
	*ptr++ = FUNC2(sigval);
	*ptr++ = FUNC1(SP_REGNUM);
	*ptr++ = FUNC2(SP_REGNUM);
	*ptr++ = ':';
	ptr = FUNC3(ptr,(char*)&frame->GPR[1],4);
	*ptr++ = ';';
	*ptr++ = FUNC1(PC_REGNUM);
	*ptr++ = FUNC2(PC_REGNUM);
	*ptr++ = ':';
	ptr = FUNC3(ptr,(char*)&frame->SRR0,4);
	*ptr++ = ';';

	*ptr++ = 't';
	*ptr++ = 'h';
	*ptr++ = 'r';
	*ptr++ = 'e';
	*ptr++ = 'a';
	*ptr++ = 'd';
	*ptr++ = ':';
	ptr = FUNC4(ptr,thread);
	*ptr++ = ';';

	*ptr++ = '\0';

}