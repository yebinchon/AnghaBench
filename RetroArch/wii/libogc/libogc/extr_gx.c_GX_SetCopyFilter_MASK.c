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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 

void FUNC2(u8 aa,u8 sample_pattern[12][2],u8 vf,u8 vfilter[7])
{
	u32 reg01=0,reg02=0,reg03=0,reg04=0,reg53=0,reg54=0;

	if(aa) {
		reg01 = sample_pattern[0][0]&0xf;
		reg01 = (reg01&~0xf0)|(FUNC1(sample_pattern[0][1],4,4));
		reg01 = (reg01&~0xf00)|(FUNC1(sample_pattern[1][0],8,4));
		reg01 = (reg01&~0xf000)|(FUNC1(sample_pattern[1][1],12,4));
		reg01 = (reg01&~0xf0000)|(FUNC1(sample_pattern[2][0],16,4));
		reg01 = (reg01&~0xf00000)|(FUNC1(sample_pattern[2][1],20,4));
		reg01 = (reg01&~0xff000000)|(FUNC1(0x01,24,8));

		reg02 = sample_pattern[3][0]&0xf;
		reg02 = (reg02&~0xf0)|(FUNC1(sample_pattern[3][1],4,4));
		reg02 = (reg02&~0xf00)|(FUNC1(sample_pattern[4][0],8,4));
		reg02 = (reg02&~0xf000)|(FUNC1(sample_pattern[4][1],12,4));
		reg02 = (reg02&~0xf0000)|(FUNC1(sample_pattern[5][0],16,4));
		reg02 = (reg02&~0xf00000)|(FUNC1(sample_pattern[5][1],20,4));
		reg02 = (reg02&~0xff000000)|(FUNC1(0x02,24,8));

		reg03 = sample_pattern[6][0]&0xf;
		reg03 = (reg03&~0xf0)|(FUNC1(sample_pattern[6][1],4,4));
		reg03 = (reg03&~0xf00)|(FUNC1(sample_pattern[7][0],8,4));
		reg03 = (reg03&~0xf000)|(FUNC1(sample_pattern[7][1],12,4));
		reg03 = (reg03&~0xf0000)|(FUNC1(sample_pattern[8][0],16,4));
		reg03 = (reg03&~0xf00000)|(FUNC1(sample_pattern[8][1],20,4));
		reg03 = (reg03&~0xff000000)|(FUNC1(0x03,24,8));

		reg04 = sample_pattern[9][0]&0xf;
		reg04 = (reg04&~0xf0)|(FUNC1(sample_pattern[9][1],4,4));
		reg04 = (reg04&~0xf00)|(FUNC1(sample_pattern[10][0],8,4));
		reg04 = (reg04&~0xf000)|(FUNC1(sample_pattern[10][1],12,4));
		reg04 = (reg04&~0xf0000)|(FUNC1(sample_pattern[11][0],16,4));
		reg04 = (reg04&~0xf00000)|(FUNC1(sample_pattern[11][1],20,4));
		reg04 = (reg04&~0xff000000)|(FUNC1(0x04,24,8));
	} else {
		reg01 = 0x01666666;
		reg02 = 0x02666666;
		reg03 = 0x03666666;
		reg04 = 0x04666666;
	}
	FUNC0(reg01);
	FUNC0(reg02);
	FUNC0(reg03);
	FUNC0(reg04);

	reg53 = 0x53595000;
	reg54 = 0x54000015;
	if(vf) {
		reg53 = 0x53000000|(vfilter[0]&0x3f);
		reg53 = (reg53&~0xfc0)|(FUNC1(vfilter[1],6,6));
		reg53 = (reg53&~0x3f000)|(FUNC1(vfilter[2],12,6));
		reg53 = (reg53&~0xfc0000)|(FUNC1(vfilter[3],18,6));

		reg54 = 0x54000000|(vfilter[4]&0x3f);
		reg54 = (reg54&~0xfc0)|(FUNC1(vfilter[5],6,6));
		reg54 = (reg54&~0x3f000)|(FUNC1(vfilter[6],12,6));
	}
	FUNC0(reg53);
	FUNC0(reg54);
}