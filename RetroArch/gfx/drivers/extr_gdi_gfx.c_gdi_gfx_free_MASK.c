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
struct TYPE_5__ {scalar_t__ winDC; scalar_t__ memDC; scalar_t__ texDC; scalar_t__ bmp; } ;
typedef  TYPE_1__ gdi_t ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* gdi_menu_frame ; 
 TYPE_1__* gdi_temp_buf ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *data)
{
   gdi_t *gdi = (gdi_t*)data;
   HWND hwnd  = FUNC6();

   if (gdi_menu_frame)
   {
      FUNC4(gdi_menu_frame);
      gdi_menu_frame = NULL;
   }

   if (gdi_temp_buf)
   {
      FUNC4(gdi_temp_buf);
      gdi_temp_buf = NULL;
   }

   if (!gdi)
      return;

   if (gdi->bmp)
      FUNC1(gdi->bmp);

   if (gdi->texDC)
   {
      FUNC0(gdi->texDC);
      gdi->texDC = 0;
   }
   if (gdi->memDC)
   {
      FUNC0(gdi->memDC);
      gdi->memDC = 0;
   }

   if (hwnd && gdi->winDC)
   {
      FUNC2(hwnd, gdi->winDC);
      gdi->winDC = 0;
   }

   FUNC3();
   FUNC5();
   FUNC4(gdi);
}