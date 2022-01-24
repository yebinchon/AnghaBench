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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int ra_set_core_hz ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned width, unsigned height)
{
#if defined(HAVE_VIDEOCORE)
   if (height > 300)
      height = height/2;
#endif

   FUNC1();
   /* get original resolution of core */
   if (height == 4)
   {
      /* detect menu only */
      if (width < 700)
         width = 320;

      height = 240;

      FUNC0(width, height);
   }

   if (height < 200 && height != 144)
   {
      FUNC0(width, height);
      height = 200;
   }

   if (height > 200)
      FUNC0(width, height);

   if (height == 144 && ra_set_core_hz == 50)
   {
      height = 288;
      FUNC0(width, height);
   }

   if (height > 200 && height < 224)
   {
      FUNC0(width, height);
      height = 224;
   }

   if (height > 224 && height < 240)
   {
      FUNC0(width, height);
      height = 240;
   }

   if (height > 240 && height < 255)
   {
      FUNC0(width, height);
      height = 254;
   }

   if (height == 528 && ra_set_core_hz == 60)
   {
      FUNC0(width, height);
      height = 480;
   }

   if (height >= 240 && height < 255 && ra_set_core_hz == 55)
   {
      FUNC0(width, height);
      height = 254;
   }

   FUNC2(width, height);
}