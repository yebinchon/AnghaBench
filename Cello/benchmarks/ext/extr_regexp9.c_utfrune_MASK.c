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
typedef  long uchar ;
typedef  long Rune ;

/* Variables and functions */
 long Runeself ; 
 long Runesync ; 
 int FUNC0 (long*,char*) ; 
 char* FUNC1 (char*,long) ; 

char*
FUNC2(char *s, long c)
{
	long c1;
	Rune r;
	int n;

	if(c < Runesync)		/* not part of utf sequence */
		return FUNC1(s, c);

	for(;;) {
		c1 = *(uchar*)s;
		if(c1 < Runeself) {	/* one byte rune */
			if(c1 == 0)
				return 0;
			if(c1 == c)
				return s;
			s++;
			continue;
		}
		n = FUNC0(&r, s);
		if(r == c)
			return s;
		s += n;
	}
}