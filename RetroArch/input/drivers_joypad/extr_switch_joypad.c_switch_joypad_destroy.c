
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HidVibrationValue ;


 unsigned int DEFAULT_MAX_PADS ;
 unsigned int MAX_USERS ;
 int hidSendVibrationValues (int ,int *,int) ;
 int hid_finalize () ;
 int memcpy (int *,int *,int) ;
 int previous_handheld ;
 scalar_t__* previous_split_joycon_setting ;
 int vibration_handleheld ;
 int * vibration_handles ;
 int vibration_stop ;
 int ** vibration_values ;

__attribute__((used)) static void switch_joypad_destroy(void)
{
   hid_finalize();

}
