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
typedef  char u8_t ;
typedef  int u32_t ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 

s32_t FUNC6(const u8_t *cp,struct in_addr *addr)
{
	u32_t val;
	u8_t c;
	u32_t parts[4];
	u32_t *pp = parts;
	int base,n;

	c = *cp;
	for(;;) {
		if(!FUNC2(c)) return 0;

		val = 0; base = 10;
		if(c=='0') {
			c = *++cp;
			if(c=='x' || c=='X')
				base = 16, c = *++cp;
			else
				base = 8;
		}
		for(;;) {
			if(FUNC2(c)) {
				val = (val*base)+(int)(c-'0');
				c = *++cp;
			} else if(base==16 && FUNC5(c)) {
				val = (val<<4)|(int)(c+10-(FUNC3(c)?'a':'A'));
				c = *++cp;
			} else
				break;
		}
		if(c=='.') {
			if(pp>=parts+3) return 0;
			*pp++ = val;
			c = *++cp;
		} else
			break;
	}

	if(c!='\0' && (!FUNC1(c) || FUNC4(c))) return 0;

	n = pp-parts+1;
	switch(n) {
		case 0:
			return 0;
		case 1:
			break;
		case 2:
			if(val>0x00ffffff) return 0;

			val |= (parts[0]<<24);
			break;
		case 3:
			if(val>0x0000ffff) return 0;

			val |= (parts[0]<<24)|(parts[1]<<16);
			break;
		case 4:
			if(val>0x000000ff) return 0;

			val |= (parts[0]<<24)|(parts[1]<<16)|(parts[2]<<8);
			break;
	}
	if(addr)
		addr->s_addr = FUNC0(val);

	return 1;
}