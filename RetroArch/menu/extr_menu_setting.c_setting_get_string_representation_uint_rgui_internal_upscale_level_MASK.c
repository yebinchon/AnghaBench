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
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_AUTO ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_NONE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X2 ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X3 ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X4 ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X5 ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X6 ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X7 ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X8 ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X9 ; 
#define  RGUI_UPSCALE_AUTO 137 
#define  RGUI_UPSCALE_NONE 136 
#define  RGUI_UPSCALE_X2 135 
#define  RGUI_UPSCALE_X3 134 
#define  RGUI_UPSCALE_X4 133 
#define  RGUI_UPSCALE_X5 132 
#define  RGUI_UPSCALE_X6 131 
#define  RGUI_UPSCALE_X7 130 
#define  RGUI_UPSCALE_X8 129 
#define  RGUI_UPSCALE_X9 128 
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
      case RGUI_UPSCALE_NONE:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_NONE),
               len);
         break;
      case RGUI_UPSCALE_AUTO:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_AUTO),
               len);
         break;
      case RGUI_UPSCALE_X2:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X2),
               len);
         break;
      case RGUI_UPSCALE_X3:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X3),
               len);
         break;
      case RGUI_UPSCALE_X4:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X4),
               len);
         break;
      case RGUI_UPSCALE_X5:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X5),
               len);
         break;
      case RGUI_UPSCALE_X6:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X6),
               len);
         break;
      case RGUI_UPSCALE_X7:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X7),
               len);
         break;
      case RGUI_UPSCALE_X8:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X8),
               len);
         break;
      case RGUI_UPSCALE_X9:
         FUNC1(s,
               FUNC0(
                  MENU_ENUM_LABEL_VALUE_RGUI_UPSCALE_X9),
               len);
         break;
   }
}