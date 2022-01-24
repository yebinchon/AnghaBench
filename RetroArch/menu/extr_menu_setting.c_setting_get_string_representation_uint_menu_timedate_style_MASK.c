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
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_DM_HM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_DM_HM_AM_PM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HMS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HMS_AM_PM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HM_AM_PM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MDYYYY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MDYYYY_AM_PM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MD_HM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MD_HM_AM_PM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HMS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HMS_AM_PM ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HM_AM_PM ; 
#define  MENU_TIMEDATE_STYLE_DM_HM 141 
#define  MENU_TIMEDATE_STYLE_DM_HM_AM_PM 140 
#define  MENU_TIMEDATE_STYLE_HM 139 
#define  MENU_TIMEDATE_STYLE_HMS 138 
#define  MENU_TIMEDATE_STYLE_HMS_AM_PM 137 
#define  MENU_TIMEDATE_STYLE_HM_AM_PM 136 
#define  MENU_TIMEDATE_STYLE_MDYYYY 135 
#define  MENU_TIMEDATE_STYLE_MDYYYY_AM_PM 134 
#define  MENU_TIMEDATE_STYLE_MD_HM 133 
#define  MENU_TIMEDATE_STYLE_MD_HM_AM_PM 132 
#define  MENU_TIMEDATE_STYLE_YMD_HM 131 
#define  MENU_TIMEDATE_STYLE_YMD_HMS 130 
#define  MENU_TIMEDATE_STYLE_YMD_HMS_AM_PM 129 
#define  MENU_TIMEDATE_STYLE_YMD_HM_AM_PM 128 
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
      case MENU_TIMEDATE_STYLE_YMD_HMS:
         FUNC1(s, FUNC0(
            MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HMS), len);
         break;
      case MENU_TIMEDATE_STYLE_YMD_HM:
         FUNC1(s, FUNC0(
            MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HM), len);
         break;
      case MENU_TIMEDATE_STYLE_MDYYYY:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MDYYYY), len);
         break;
      case MENU_TIMEDATE_STYLE_HMS:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HMS), len);
         break;
      case MENU_TIMEDATE_STYLE_HM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HM), len);
         break;
      case MENU_TIMEDATE_STYLE_DM_HM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_DM_HM), len);
         break;
      case MENU_TIMEDATE_STYLE_MD_HM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MD_HM), len);
         break;
      case MENU_TIMEDATE_STYLE_YMD_HMS_AM_PM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HMS_AM_PM), len);
         break;
      case MENU_TIMEDATE_STYLE_YMD_HM_AM_PM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_YMD_HM_AM_PM), len);
         break;
      case MENU_TIMEDATE_STYLE_MDYYYY_AM_PM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MDYYYY_AM_PM), len);
         break;
      case MENU_TIMEDATE_STYLE_HMS_AM_PM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HMS_AM_PM), len);
         break;
      case MENU_TIMEDATE_STYLE_HM_AM_PM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_HM_AM_PM), len);
         break;
      case MENU_TIMEDATE_STYLE_DM_HM_AM_PM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_DM_HM_AM_PM), len);
         break;
      case MENU_TIMEDATE_STYLE_MD_HM_AM_PM:
         FUNC1(s,
            FUNC0(
               MENU_ENUM_LABEL_VALUE_TIMEDATE_STYLE_MD_HM_AM_PM), len);
         break;
   }
}