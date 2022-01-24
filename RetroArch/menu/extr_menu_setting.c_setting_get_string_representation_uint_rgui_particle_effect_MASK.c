#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* unsigned_integer; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef  TYPE_3__ rarch_setting_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_NONE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_RAIN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW_ALT ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_STARFIELD ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_VORTEX ; 
#define  RGUI_PARTICLE_EFFECT_NONE 133 
#define  RGUI_PARTICLE_EFFECT_RAIN 132 
#define  RGUI_PARTICLE_EFFECT_SNOW 131 
#define  RGUI_PARTICLE_EFFECT_SNOW_ALT 130 
#define  RGUI_PARTICLE_EFFECT_STARFIELD 129 
#define  RGUI_PARTICLE_EFFECT_VORTEX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   switch (*setting->value.target.unsigned_integer)
   {
      case RGUI_PARTICLE_EFFECT_NONE:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_NONE),
               len);
         break;
      case RGUI_PARTICLE_EFFECT_SNOW:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW),
               len);
         break;
      case RGUI_PARTICLE_EFFECT_SNOW_ALT:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW_ALT),
               len);
         break;
      case RGUI_PARTICLE_EFFECT_RAIN:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_RAIN),
               len);
         break;
      case RGUI_PARTICLE_EFFECT_VORTEX:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_VORTEX),
               len);
         break;
      case RGUI_PARTICLE_EFFECT_STARFIELD:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_STARFIELD),
               len);
         break;
   }
}