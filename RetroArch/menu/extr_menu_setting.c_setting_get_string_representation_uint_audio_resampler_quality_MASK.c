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
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DONT_CARE ; 
 int /*<<< orphan*/  MSG_RESAMPLER_QUALITY_HIGHER ; 
 int /*<<< orphan*/  MSG_RESAMPLER_QUALITY_HIGHEST ; 
 int /*<<< orphan*/  MSG_RESAMPLER_QUALITY_LOWER ; 
 int /*<<< orphan*/  MSG_RESAMPLER_QUALITY_LOWEST ; 
 int /*<<< orphan*/  MSG_RESAMPLER_QUALITY_NORMAL ; 
#define  RESAMPLER_QUALITY_DONTCARE 133 
#define  RESAMPLER_QUALITY_HIGHER 132 
#define  RESAMPLER_QUALITY_HIGHEST 131 
#define  RESAMPLER_QUALITY_LOWER 130 
#define  RESAMPLER_QUALITY_LOWEST 129 
#define  RESAMPLER_QUALITY_NORMAL 128 
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
      case RESAMPLER_QUALITY_DONTCARE:
         FUNC1(s, FUNC0(MENU_ENUM_LABEL_VALUE_DONT_CARE),
               len);
         break;
      case RESAMPLER_QUALITY_LOWEST:
         FUNC1(s, FUNC0(MSG_RESAMPLER_QUALITY_LOWEST),
               len);
         break;
      case RESAMPLER_QUALITY_LOWER:
         FUNC1(s, FUNC0(MSG_RESAMPLER_QUALITY_LOWER),
               len);
         break;
      case RESAMPLER_QUALITY_HIGHER:
         FUNC1(s, FUNC0(MSG_RESAMPLER_QUALITY_HIGHER),
               len);
         break;
      case RESAMPLER_QUALITY_HIGHEST:
         FUNC1(s, FUNC0(MSG_RESAMPLER_QUALITY_HIGHEST),
               len);
         break;
      case RESAMPLER_QUALITY_NORMAL:
         FUNC1(s, FUNC0(MSG_RESAMPLER_QUALITY_NORMAL),
               len);
         break;
   }
}