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
 int LINE_WIDTH ; 
 unsigned char* PicoDraw2FB ; 
 int START_ROW ; 
 int FUNC0 (unsigned char*,int,unsigned char) ; 
 int FUNC1 (unsigned char*,int,unsigned char) ; 
 int FUNC2 (unsigned char*,int,unsigned char) ; 
 int FUNC3 (unsigned char*,int,unsigned char) ; 

__attribute__((used)) static void FUNC4(int *hc)
{
	int code, addr, zero = 0;
	unsigned int prevy=0xFFFFFFFF;
//	unsigned short *pal;
	unsigned char pal;
	short blank=-1; // The tile we know is blank
	unsigned char *scrpos = PicoDraw2FB, *pd = 0;

	// *hcache++ = code|(dx<<16)|(trow<<27); // cache it
	scrpos+=(*hc++)*LINE_WIDTH - START_ROW*LINE_WIDTH*8;

	while((code=*hc++)) {
		if((short)code == blank) continue;

		// y pos
		if(((unsigned)code>>27) != prevy) {
			prevy = (unsigned)code>>27;
			pd = scrpos + prevy*LINE_WIDTH*8;
		}

		// Get tile address/2:
		addr=(code&0x7ff)<<4;
//		pal=PicoCramHigh+((code>>9)&0x30);
		pal=(unsigned char)((code>>9)&0x30);

		switch((code>>11)&3) {
			case 0: zero=FUNC3(pd+((code>>16)&0x1ff),addr,pal); break;
			case 1: zero=FUNC1(pd+((code>>16)&0x1ff),addr,pal); break;
			case 2: zero=FUNC2(pd+((code>>16)&0x1ff),addr,pal); break;
			case 3: zero=FUNC0(pd+((code>>16)&0x1ff),addr,pal); break;
		}

		if(zero) blank=(short)code;
	}
}