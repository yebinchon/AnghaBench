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
struct android_app {int /*<<< orphan*/  looper; int /*<<< orphan*/  sensorManager; int /*<<< orphan*/  sensorEventQueue; int /*<<< orphan*/  accelerometerSensor; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASENSOR_TYPE_ACCELEROMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOOPER_ID_USER ; 

__attribute__((used)) static void FUNC3(struct android_app *android_app)
{
   android_app->sensorManager = FUNC2();
   android_app->accelerometerSensor =
      FUNC1(android_app->sensorManager,
         ASENSOR_TYPE_ACCELEROMETER);
   android_app->sensorEventQueue =
      FUNC0(android_app->sensorManager,
         android_app->looper, LOOPER_ID_USER, NULL, NULL);
}