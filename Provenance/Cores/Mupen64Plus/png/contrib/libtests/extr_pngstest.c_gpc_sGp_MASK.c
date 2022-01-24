#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int a; int r; int g; int b; } ;
typedef  TYPE_1__ Pixel ;
typedef  int /*<<< orphan*/  Background ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(Pixel *out, const Pixel *in, const Background *back)
{
   (void)back;

   if (in->a <= 128)
   {
      out->r = out->g = out->b = 255;
      out->a = 0;
   }

   else
   {
      out->r = out->g = out->b = FUNC1(FUNC0(in->r, in->g, in->b)/in->a);
      out->a = FUNC2(in->a / 257.);
   }
}