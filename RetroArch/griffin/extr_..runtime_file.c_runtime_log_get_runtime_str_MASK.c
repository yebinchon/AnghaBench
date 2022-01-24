#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hours; int minutes; int seconds; } ;
struct TYPE_5__ {TYPE_1__ runtime; } ;
typedef  TYPE_2__ runtime_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_RUNTIME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char*,char*,...) ; 

void FUNC2(runtime_log_t *runtime_log, char *str, size_t len)
{
   int n = 0;

   if (runtime_log)
   {
      n = FUNC1(str, len, "%s %02u:%02u:%02u",
            FUNC0(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_RUNTIME),
            runtime_log->runtime.hours, runtime_log->runtime.minutes, runtime_log->runtime.seconds);
   }
   else
   {
      n = FUNC1(str, len, "%s 00:00:00",
            FUNC0(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_RUNTIME));
   }

   if ((n < 0) || (n >= 64))
      n = 0; /* Silence GCC warnings... */
}