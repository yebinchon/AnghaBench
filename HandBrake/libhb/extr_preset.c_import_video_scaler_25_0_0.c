
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_dict_set (int *,char*,int ) ;
 int hb_value_string (char*) ;

__attribute__((used)) static void import_video_scaler_25_0_0(hb_value_t *preset)
{
    hb_dict_set(preset, "VideoScaler", hb_value_string("swscale"));
}
