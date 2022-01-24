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
#define  RECORD_CONFIG_TYPE_STREAMING_CUSTOM 131 
#define  RECORD_CONFIG_TYPE_STREAMING_HIGH_QUALITY 130 
#define  RECORD_CONFIG_TYPE_STREAMING_LOW_QUALITY 129 
#define  RECORD_CONFIG_TYPE_STREAMING_MED_QUALITY 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC1(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   /* TODO/FIXME - localize this */
   switch (*setting->value.target.unsigned_integer)
   {
      case RECORD_CONFIG_TYPE_STREAMING_CUSTOM:
         FUNC0(s, "Custom", len);
         break;
      case RECORD_CONFIG_TYPE_STREAMING_LOW_QUALITY:
         FUNC0(s, "Low", len);
         break;
      case RECORD_CONFIG_TYPE_STREAMING_MED_QUALITY:
         FUNC0(s, "Medium", len);
         break;
      case RECORD_CONFIG_TYPE_STREAMING_HIGH_QUALITY:
         FUNC0(s, "High", len);
         break;
   }
}