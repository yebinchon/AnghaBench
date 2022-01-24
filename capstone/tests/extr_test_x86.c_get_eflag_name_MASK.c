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
typedef  int uint64_t ;

/* Variables and functions */
#define  X86_EFLAGS_MODIFY_AF 173 
#define  X86_EFLAGS_MODIFY_CF 172 
#define  X86_EFLAGS_MODIFY_DF 171 
#define  X86_EFLAGS_MODIFY_IF 170 
#define  X86_EFLAGS_MODIFY_NT 169 
#define  X86_EFLAGS_MODIFY_OF 168 
#define  X86_EFLAGS_MODIFY_PF 167 
#define  X86_EFLAGS_MODIFY_RF 166 
#define  X86_EFLAGS_MODIFY_SF 165 
#define  X86_EFLAGS_MODIFY_TF 164 
#define  X86_EFLAGS_MODIFY_ZF 163 
#define  X86_EFLAGS_PRIOR_AF 162 
#define  X86_EFLAGS_PRIOR_CF 161 
#define  X86_EFLAGS_PRIOR_DF 160 
#define  X86_EFLAGS_PRIOR_IF 159 
#define  X86_EFLAGS_PRIOR_NT 158 
#define  X86_EFLAGS_PRIOR_OF 157 
#define  X86_EFLAGS_PRIOR_PF 156 
#define  X86_EFLAGS_PRIOR_SF 155 
#define  X86_EFLAGS_PRIOR_TF 154 
#define  X86_EFLAGS_PRIOR_ZF 153 
#define  X86_EFLAGS_RESET_AF 152 
#define  X86_EFLAGS_RESET_CF 151 
#define  X86_EFLAGS_RESET_DF 150 
#define  X86_EFLAGS_RESET_IF 149 
#define  X86_EFLAGS_RESET_NT 148 
#define  X86_EFLAGS_RESET_OF 147 
#define  X86_EFLAGS_RESET_PF 146 
#define  X86_EFLAGS_RESET_SF 145 
#define  X86_EFLAGS_RESET_TF 144 
#define  X86_EFLAGS_SET_CF 143 
#define  X86_EFLAGS_SET_DF 142 
#define  X86_EFLAGS_SET_IF 141 
#define  X86_EFLAGS_TEST_CF 140 
#define  X86_EFLAGS_TEST_DF 139 
#define  X86_EFLAGS_TEST_NT 138 
#define  X86_EFLAGS_TEST_OF 137 
#define  X86_EFLAGS_TEST_PF 136 
#define  X86_EFLAGS_TEST_SF 135 
#define  X86_EFLAGS_TEST_ZF 134 
#define  X86_EFLAGS_UNDEFINED_AF 133 
#define  X86_EFLAGS_UNDEFINED_CF 132 
#define  X86_EFLAGS_UNDEFINED_OF 131 
#define  X86_EFLAGS_UNDEFINED_PF 130 
#define  X86_EFLAGS_UNDEFINED_SF 129 
#define  X86_EFLAGS_UNDEFINED_ZF 128 

__attribute__((used)) static const char *FUNC0(uint64_t flag)
{
	switch(flag) {
		default:
			return NULL;
		case X86_EFLAGS_UNDEFINED_OF:
			return "UNDEF_OF";
		case X86_EFLAGS_UNDEFINED_SF:
			return "UNDEF_SF";
		case X86_EFLAGS_UNDEFINED_ZF:
			return "UNDEF_ZF";
		case X86_EFLAGS_MODIFY_AF:
			return "MOD_AF";
		case X86_EFLAGS_UNDEFINED_PF:
			return "UNDEF_PF";
		case X86_EFLAGS_MODIFY_CF:
			return "MOD_CF";
		case X86_EFLAGS_MODIFY_SF:
			return "MOD_SF";
		case X86_EFLAGS_MODIFY_ZF:
			return "MOD_ZF";
		case X86_EFLAGS_UNDEFINED_AF:
			return "UNDEF_AF";
		case X86_EFLAGS_MODIFY_PF:
			return "MOD_PF";
		case X86_EFLAGS_UNDEFINED_CF:
			return "UNDEF_CF";
		case X86_EFLAGS_MODIFY_OF:
			return "MOD_OF";
		case X86_EFLAGS_RESET_OF:
			return "RESET_OF";
		case X86_EFLAGS_RESET_CF:
			return "RESET_CF";
		case X86_EFLAGS_RESET_DF:
			return "RESET_DF";
		case X86_EFLAGS_RESET_IF:
			return "RESET_IF";
		case X86_EFLAGS_TEST_OF:
			return "TEST_OF";
		case X86_EFLAGS_TEST_SF:
			return "TEST_SF";
		case X86_EFLAGS_TEST_ZF:
			return "TEST_ZF";
		case X86_EFLAGS_TEST_PF:
			return "TEST_PF";
		case X86_EFLAGS_TEST_CF:
			return "TEST_CF";
		case X86_EFLAGS_RESET_SF:
			return "RESET_SF";
		case X86_EFLAGS_RESET_AF:
			return "RESET_AF";
		case X86_EFLAGS_RESET_TF:
			return "RESET_TF";
		case X86_EFLAGS_RESET_NT:
			return "RESET_NT";
		case X86_EFLAGS_PRIOR_OF:
			return "PRIOR_OF";
		case X86_EFLAGS_PRIOR_SF:
			return "PRIOR_SF";
		case X86_EFLAGS_PRIOR_ZF:
			return "PRIOR_ZF";
		case X86_EFLAGS_PRIOR_AF:
			return "PRIOR_AF";
		case X86_EFLAGS_PRIOR_PF:
			return "PRIOR_PF";
		case X86_EFLAGS_PRIOR_CF:
			return "PRIOR_CF";
		case X86_EFLAGS_PRIOR_TF:
			return "PRIOR_TF";
		case X86_EFLAGS_PRIOR_IF:
			return "PRIOR_IF";
		case X86_EFLAGS_PRIOR_DF:
			return "PRIOR_DF";
		case X86_EFLAGS_TEST_NT:
			return "TEST_NT";
		case X86_EFLAGS_TEST_DF:
			return "TEST_DF";
		case X86_EFLAGS_RESET_PF:
			return "RESET_PF";
		case X86_EFLAGS_PRIOR_NT:
			return "PRIOR_NT";
		case X86_EFLAGS_MODIFY_TF:
			return "MOD_TF";
		case X86_EFLAGS_MODIFY_IF:
			return "MOD_IF";
		case X86_EFLAGS_MODIFY_DF:
			return "MOD_DF";
		case X86_EFLAGS_MODIFY_NT:
			return "MOD_NT";
		case X86_EFLAGS_MODIFY_RF:
			return "MOD_RF";
		case X86_EFLAGS_SET_CF:
			return "SET_CF";
		case X86_EFLAGS_SET_DF:
			return "SET_DF";
		case X86_EFLAGS_SET_IF:
			return "SET_IF";
	}
}