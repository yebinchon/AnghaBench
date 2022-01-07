
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {int looper; int sensorManager; int sensorEventQueue; int accelerometerSensor; } ;


 int ASENSOR_TYPE_ACCELEROMETER ;
 int ASensorManager_createEventQueue (int ,int ,int ,int *,int *) ;
 int ASensorManager_getDefaultSensor (int ,int ) ;
 int ASensorManager_getInstance () ;
 int LOOPER_ID_USER ;

__attribute__((used)) static void android_input_enable_sensor_manager(struct android_app *android_app)
{
   android_app->sensorManager = ASensorManager_getInstance();
   android_app->accelerometerSensor =
      ASensorManager_getDefaultSensor(android_app->sensorManager,
         ASENSOR_TYPE_ACCELEROMETER);
   android_app->sensorEventQueue =
      ASensorManager_createEventQueue(android_app->sensorManager,
         android_app->looper, LOOPER_ID_USER, ((void*)0), ((void*)0));
}
