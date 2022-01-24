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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u8 FUNC2(u32 errorcode)
{
	u8 err,err_num;

	if((errorcode-0x01230000)==0x4567) return 255;
	else if((errorcode-0x01230000)==0x4568) return 254;

	err = FUNC0(errorcode,24,8);
	err_num = FUNC1((errorcode&0x00ffffff));
	if(err>0x06) err = 0x06;

	return err_num+(err*30);
}