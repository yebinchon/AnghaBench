
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float x; float y; float z; } ;
struct TYPE_5__ {float x; float y; float z; } ;
struct TYPE_7__ {TYPE_2__ gyroscope; TYPE_1__ accelerometer; } ;
typedef TYPE_3__ SixAxisSensorValues ;


 unsigned int CONTROLLER_P1_AUTO ;






 unsigned int RETRO_SENSOR_ILLUMINANCE ;
 int appletGetCurrentIlluminance (float*) ;
 int hidSixAxisSensorValuesRead (TYPE_3__*,unsigned int,int) ;

__attribute__((used)) static float switch_input_get_sensor_input(void *data,
      unsigned port, unsigned id)
{
   return 0.0f;
}
