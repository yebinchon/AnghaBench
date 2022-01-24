#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned char* palette; int palettesize; } ;
typedef  TYPE_1__ LodePNGColorMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

unsigned FUNC2(LodePNGColorMode* dest, const LodePNGColorMode* source)
{
  size_t i;
  FUNC0(dest);
  *dest = *source;
  if(source->palette)
  {
    dest->palette = (unsigned char*)FUNC1(1024);
    if(!dest->palette && source->palettesize) return 83; /*alloc fail*/
    for(i = 0; i < source->palettesize * 4; i++) dest->palette[i] = source->palette[i];
  }
  return 0;
}