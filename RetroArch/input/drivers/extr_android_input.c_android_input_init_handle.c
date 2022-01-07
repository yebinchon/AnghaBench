
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_LOG (char*) ;
 int RTLD_DEFAULT ;
 int RTLD_LAZY ;
 int RTLD_LOCAL ;
 int * dlopen (char*,int) ;
 void* dlsym (int ,char*) ;
 int engine_handle_dpad ;
 int engine_handle_dpad_getaxisvalue ;
 int * libandroid_handle ;
 void* p_AMotionEvent_getAxisValue ;
 void* p_AMotionEvent_getButtonState ;
 int pad_id1 ;
 int pad_id2 ;

__attribute__((used)) static bool android_input_init_handle(void)
{
   pad_id1 = -1;
   pad_id2 = -1;

   return 1;
}
