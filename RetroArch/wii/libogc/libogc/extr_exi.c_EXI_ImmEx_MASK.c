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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

s32 FUNC2(s32 nChn,void *pData,u32 nLen,u32 nMode)
{
	u8 *buf = pData;
	u32 tc;
	s32 ret = 0;
	while(nLen) {
		ret = 0;
		tc = nLen;
		if(tc>4) tc = 4;

		if(!FUNC0(nChn,buf,tc,nMode,NULL)) break;
		if(!FUNC1(nChn)) break;
		nLen -= tc;
		buf += tc;

		ret = 1;
	}
	return ret;
}