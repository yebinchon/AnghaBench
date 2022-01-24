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

/* Variables and functions */
 unsigned int* buf ; 
 size_t compiledOfs ; 
 int pass ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int*,char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC1( char *opname, int opcode, int destReg, int aReg, int bReg, int cReg ) {
    unsigned		r;

	#if DEBUG_VM
	if(pass == 1)
		printf("\t\t\t%p %s\tr%d,r%d,r%d,r%d\n",&buf[compiledOfs],opname,destReg,aReg,bReg,cReg);
	#endif
    r = opcode | ( destReg << 21 ) | ( aReg << 16 ) | ( bReg << 11 ) | ( cReg << 6 );
    buf[ compiledOfs ] = r;
    compiledOfs++;
}