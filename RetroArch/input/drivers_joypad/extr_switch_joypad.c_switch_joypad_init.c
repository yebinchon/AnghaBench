
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float amp_low; float freq_low; float amp_high; float freq_high; } ;
typedef int HidVibrationValue ;


 unsigned int CONTROLLER_HANDHELD ;
 unsigned int DEFAULT_MAX_PADS ;
 int TYPE_HANDHELD ;
 int TYPE_JOYCON_PAIR ;
 int hidInitializeVibrationDevices (int ,int,unsigned int,int) ;
 int hidScanInput () ;
 int hid_init () ;
 int memcpy (int *,TYPE_1__*,int) ;
 int switch_joypad_autodetect_add (int) ;
 int vibration_handleheld ;
 int * vibration_handles ;
 TYPE_1__ vibration_stop ;
 int ** vibration_values ;

__attribute__((used)) static bool switch_joypad_init(void *data)
{
   hid_init();
   switch_joypad_autodetect_add(0);
   switch_joypad_autodetect_add(1);


   return 1;
}
