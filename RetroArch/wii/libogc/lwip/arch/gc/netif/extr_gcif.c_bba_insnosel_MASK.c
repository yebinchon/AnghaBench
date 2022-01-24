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
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_WRITE ; 

__attribute__((used)) static __inline__ void FUNC3(u32 reg,void *val,u32 len)
{
	u32 req;
	req = (reg<<8)|0x80000000;
	FUNC0(EXI_CHANNEL_0,&req,sizeof(req),EXI_WRITE,NULL);
	FUNC2(EXI_CHANNEL_0);
	FUNC1(EXI_CHANNEL_0,val,len,EXI_READ);
}