
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {int sensor_state_mask; int accelerometerSensor; int sensorEventQueue; } ;
typedef enum retro_sensor_action { ____Placeholder_retro_sensor_action } retro_sensor_action ;


 int ASensorEventQueue_disableSensor (int ,int ) ;
 int ASensorEventQueue_enableSensor (int ,int ) ;
 int ASensorEventQueue_setEventRate (int ,int ,long) ;
 int BIT64_CLEAR (int ,int const) ;
 int BIT64_SET (int ,int const) ;


 int android_input_enable_sensor_manager (struct android_app*) ;
 scalar_t__ g_android ;

__attribute__((used)) static bool android_input_set_sensor_state(void *data, unsigned port,
      enum retro_sensor_action action, unsigned event_rate)
{
   struct android_app *android_app = (struct android_app*)g_android;

   if (event_rate == 0)
      event_rate = 60;

   switch (action)
   {
      case 128:
         if (!android_app->accelerometerSensor)
            android_input_enable_sensor_manager(android_app);

         if (android_app->accelerometerSensor)
            ASensorEventQueue_enableSensor(android_app->sensorEventQueue,
                  android_app->accelerometerSensor);


         if (android_app->accelerometerSensor)
            ASensorEventQueue_setEventRate(android_app->sensorEventQueue,
                  android_app->accelerometerSensor, (1000L / event_rate)
                  * 1000);

         BIT64_CLEAR(android_app->sensor_state_mask, 129);
         BIT64_SET(android_app->sensor_state_mask, 128);
         return 1;

      case 129:
         if (android_app->accelerometerSensor)
            ASensorEventQueue_disableSensor(android_app->sensorEventQueue,
                  android_app->accelerometerSensor);

         BIT64_CLEAR(android_app->sensor_state_mask, 128);
         BIT64_SET(android_app->sensor_state_mask, 129);
         return 1;
      default:
         return 0;
   }

   return 0;
}
