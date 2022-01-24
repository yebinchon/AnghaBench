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
struct TYPE_2__ {int /*<<< orphan*/  video; int /*<<< orphan*/ * vsram; int /*<<< orphan*/ * cram; int /*<<< orphan*/ * vram; } ;

/* Variables and functions */
 TYPE_1__ Pico ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(void *ptrx)
{
	unsigned char *ptr = ptrx;
	FUNC1(Pico.vram,  ptr,  sizeof(Pico.vram));
	FUNC1(Pico.cram,  ptr + sizeof(Pico.vram), sizeof(Pico.cram));
	FUNC1(Pico.vsram, ptr + sizeof(Pico.vram) + sizeof(Pico.cram), sizeof(Pico.vsram));
	FUNC1(&Pico.video,ptr + sizeof(Pico.vram) + sizeof(Pico.cram) + sizeof(Pico.vsram), sizeof(Pico.video));
	FUNC0(ptrx);
}