#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {char a; char b; char c; char d; char e; char f; char g; char h; } ;
typedef  TYPE_1__ pasc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC2(char *inbuf, uint32_t length)
{
	pasc_t packs;
	unsigned i = 0;
	length = (length * 8)/7;

	while (i < length) {
	  packs = *(pasc_t *)&inbuf[i];
	  FUNC1(&inbuf[i+7], &inbuf[i+8], FUNC0(0, (int) (length - i - 8)));
	  inbuf[i++] = packs.a;
	  inbuf[i++] = packs.b;
	  inbuf[i++] = packs.c;
	  inbuf[i++] = packs.d;
	  inbuf[i++] = packs.e;
	  inbuf[i++] = packs.f;
	  inbuf[i++] = packs.g;
	  inbuf[i++] = packs.h;
	}
}