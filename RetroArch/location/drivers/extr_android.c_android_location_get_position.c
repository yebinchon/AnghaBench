
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct android_app {TYPE_1__* activity; } ;
typedef double jdouble ;
typedef int jboolean ;
struct TYPE_4__ {int onLocationGetHorizontalAccuracy; int onLocationGetLongitude; int onLocationGetLatitude; int onLocationHasChanged; } ;
typedef TYPE_2__ androidlocation_t ;
struct TYPE_3__ {int clazz; } ;
typedef int JNIEnv ;


 int CALL_BOOLEAN_METHOD (int *,int ,int ,int ) ;
 int CALL_DOUBLE_METHOD (int *,double,int ,int ) ;
 scalar_t__ g_android ;
 int * jni_thread_getenv () ;

__attribute__((used)) static bool android_location_get_position(void *data, double *latitude,
      double *longitude, double *horiz_accuracy,
      double *vert_accuracy)
{
   struct android_app *android_app = (struct android_app*)g_android;
   androidlocation_t *androidlocation = (androidlocation_t*)data;
   JNIEnv *env = jni_thread_getenv();
   if (!env)
      goto fail;

   jdouble lat, lon, horiz_accu;
   jboolean newLocation;

   CALL_BOOLEAN_METHOD(env, newLocation, android_app->activity->clazz,
         androidlocation->onLocationHasChanged);

   if (!newLocation)
      goto fail;

   CALL_DOUBLE_METHOD(env, lat, android_app->activity->clazz,
         androidlocation->onLocationGetLatitude);
   CALL_DOUBLE_METHOD(env, lon, android_app->activity->clazz,
         androidlocation->onLocationGetLongitude);
   CALL_DOUBLE_METHOD(env, horiz_accu, android_app->activity->clazz,
         androidlocation->onLocationGetHorizontalAccuracy);

   if (lat != 0.0)
      *latitude = lat;
   if (lon != 0.0)
      *longitude = lon;
   if (horiz_accu != 0.0)
      *horiz_accuracy = horiz_accu;



   *vert_accuracy = 0.0;

   return 1;

fail:
   *latitude = 0.0;
   *longitude = 0.0;
   *horiz_accuracy = 0.0;
   *vert_accuracy = 0.0;
   return 0;
}
