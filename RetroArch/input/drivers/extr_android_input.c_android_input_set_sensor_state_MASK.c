#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct android_app {int /*<<< orphan*/  sensor_state_mask; int /*<<< orphan*/  accelerometerSensor; int /*<<< orphan*/  sensorEventQueue; } ;
typedef  enum retro_sensor_action { ____Placeholder_retro_sensor_action } retro_sensor_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const) ; 
#define  RETRO_SENSOR_ACCELEROMETER_DISABLE 129 
#define  RETRO_SENSOR_ACCELEROMETER_ENABLE 128 
 int /*<<< orphan*/  FUNC5 (struct android_app*) ; 
 scalar_t__ g_android ; 

__attribute__((used)) static bool FUNC6(void *data, unsigned port,
      enum retro_sensor_action action, unsigned event_rate)
{
   struct android_app *android_app = (struct android_app*)g_android;

   if (event_rate == 0)
      event_rate = 60;

   switch (action)
   {
      case RETRO_SENSOR_ACCELEROMETER_ENABLE:
         if (!android_app->accelerometerSensor)
            FUNC5(android_app);

         if (android_app->accelerometerSensor)
            FUNC1(android_app->sensorEventQueue,
                  android_app->accelerometerSensor);

         /* Events per second (in microseconds). */
         if (android_app->accelerometerSensor)
            FUNC2(android_app->sensorEventQueue,
                  android_app->accelerometerSensor, (1000L / event_rate)
                  * 1000);

         FUNC3(android_app->sensor_state_mask, RETRO_SENSOR_ACCELEROMETER_DISABLE);
         FUNC4(android_app->sensor_state_mask, RETRO_SENSOR_ACCELEROMETER_ENABLE);
         return true;

      case RETRO_SENSOR_ACCELEROMETER_DISABLE:
         if (android_app->accelerometerSensor)
            FUNC0(android_app->sensorEventQueue,
                  android_app->accelerometerSensor);

         FUNC3(android_app->sensor_state_mask, RETRO_SENSOR_ACCELEROMETER_ENABLE);
         FUNC4(android_app->sensor_state_mask, RETRO_SENSOR_ACCELEROMETER_DISABLE);
         return true;
      default:
         return false;
   }

   return false;
}