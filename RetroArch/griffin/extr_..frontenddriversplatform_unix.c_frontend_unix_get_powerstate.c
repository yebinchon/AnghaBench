
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int jint ;
typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;
struct TYPE_4__ {scalar_t__ getBatteryLevel; TYPE_1__* activity; scalar_t__ getPowerstate; } ;
struct TYPE_3__ {int clazz; } ;
typedef int JNIEnv ;


 int CALL_INT_METHOD (int *,int,int ,scalar_t__) ;
 int FRONTEND_POWERSTATE_NONE ;
 scalar_t__ frontend_unix_powerstate_check_acpi (int*,int*,int*) ;
 scalar_t__ frontend_unix_powerstate_check_acpi_sysfs (int*,int*,int*) ;
 scalar_t__ frontend_unix_powerstate_check_apm (int*,int*,int*) ;
 TYPE_2__* g_android ;
 int * jni_thread_getenv () ;

__attribute__((used)) static enum frontend_powerstate frontend_unix_get_powerstate(
      int *seconds, int *percent)
{
   enum frontend_powerstate ret = FRONTEND_POWERSTATE_NONE;
   if (frontend_unix_powerstate_check_acpi_sysfs(&ret, seconds, percent))
      return ret;

   ret = FRONTEND_POWERSTATE_NONE;

   if (frontend_unix_powerstate_check_acpi(&ret, seconds, percent))
      return ret;

   if (frontend_unix_powerstate_check_apm(&ret, seconds, percent))
      return ret;


   return ret;
}
