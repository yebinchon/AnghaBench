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
typedef  size_t u8 ;
struct TYPE_2__ {int fbWidth; int efbHeight; } ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int,int,int,int /*<<< orphan*/ ) ; 
 int fheight ; 
 int* font_size ; 
 int FUNC1 (char*) ; 
 TYPE_1__* vmode ; 

int FUNC2(char *string, int size, int x, int y, int max_width, GXColor color)
{
  x -= (vmode->fbWidth / 2);
  y -= (vmode->efbHeight / 2);
  int w, ox = x;

  while (*string && (*string != '\n'))
  {
    w = (font_size[(u8)*string] * size) / fheight;
    if ((x + w) > (ox + max_width)) return FUNC1(string);
    FUNC0(*string, x, y, size,color);
    x += w;
    string++;
  }
 
  if (*string == '\n')
  {
    string++;
    return FUNC2(string, size, ox + (vmode->fbWidth / 2), y + size + (vmode->efbHeight / 2), max_width, color);
  }

  return 0;
}