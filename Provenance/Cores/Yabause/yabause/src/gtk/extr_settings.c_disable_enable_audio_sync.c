
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiCheckButton ;


 int ScspSetFrameAccurate (int ) ;
 int yui_check_button_get_active (int *) ;

__attribute__((used)) static void disable_enable_audio_sync(YuiCheckButton *audiosync) {
 ScspSetFrameAccurate(yui_check_button_get_active(audiosync));
}
