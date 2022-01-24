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
struct TYPE_2__ {int /*<<< orphan*/  features; } ;
typedef  int EGLenum ;

/* Variables and functions */
 int EGL_MAX_CONFIGS ; 
#define  EGL_NO_TEXTURE 130 
#define  EGL_TEXTURE_RGB 129 
#define  EGL_TEXTURE_RGBA 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* formats ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool FUNC4(int id, EGLenum format)
{
   FUNC3(id >= 0 && id < EGL_MAX_CONFIGS);
   switch (format) {
   case EGL_NO_TEXTURE:
      return true;
   case EGL_TEXTURE_RGB:
      return FUNC1(formats[id].features);
   case EGL_TEXTURE_RGBA:
      return FUNC2(formats[id].features);
   default:
      FUNC0();
      return false;
   }
}