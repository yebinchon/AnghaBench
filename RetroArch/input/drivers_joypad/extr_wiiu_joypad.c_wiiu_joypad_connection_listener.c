
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_device_driver_t ;


 unsigned int MAX_USERS ;
 int ** pad_drivers ;

__attribute__((used)) static void wiiu_joypad_connection_listener(unsigned pad,
               input_device_driver_t *driver)
{
   if (pad < MAX_USERS)
      pad_drivers[pad] = driver;
}
