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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 unsigned int* buf ; 
 size_t compiledOfs ; 
 int pass ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int*,char*,int,int,int) ; 

__attribute__((used)) static void FUNC2( char *opname, int opcode, int destReg, int aReg, int immediate ) {
	unsigned		r;
	
	if ( immediate > 32767 || immediate < -32768 ) {
	    FUNC0( ERR_FATAL, "VM_Compile: immediate value %i out of range, opcode %x,%d,%d", immediate, opcode, destReg, aReg );
	}
	#if DEBUG_VM
	if(pass == 1)
		printf("\t\t\t%p %s\tr%d,r%d,0x%x\n",&buf[compiledOfs],opname,destReg,aReg,immediate);
	#endif
	r = opcode | ( destReg << 21 ) | ( aReg << 16 ) | ( immediate & 0xffff );
	buf[ compiledOfs ] = r;
	compiledOfs++;
}