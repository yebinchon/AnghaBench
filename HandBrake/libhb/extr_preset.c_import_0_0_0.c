
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int import_10_0_0 (int *) ;
 int import_audio_0_0_0 (int *) ;
 int import_deint_0_0_0 (int *) ;
 int import_denoise_0_0_0 (int *) ;
 int import_detel_0_0_0 (int *) ;
 int import_pic_0_0_0 (int *) ;
 int import_video_0_0_0 (int *) ;

__attribute__((used)) static void import_0_0_0(hb_value_t *preset)
{
    import_video_0_0_0(preset);
    import_pic_0_0_0(preset);
    import_audio_0_0_0(preset);
    import_deint_0_0_0(preset);
    import_detel_0_0_0(preset);
    import_denoise_0_0_0(preset);


    import_10_0_0(preset);
}
