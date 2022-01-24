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
typedef  int u32 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int*) ; 
 char* FUNC1 (char const*,int*) ; 

s32 FUNC2(const char *in,s32 *type,char **addr,u32 *len)
{
	s32 ttmp,atmp,ltmp;

	in++;
	if(!FUNC0(in,&ttmp) || *(in+1)!=',') return 0;

	in += 2;
	in = FUNC1(in,&atmp);
	if(in==NULL || *in!=',') return 0;

	in++;
	in = FUNC1(in,&ltmp);
	if(in==NULL || ltmp<1) return 0;

	*type = ttmp;
	*addr = (char*)atmp;
	*len = ltmp;

	return 1;
}