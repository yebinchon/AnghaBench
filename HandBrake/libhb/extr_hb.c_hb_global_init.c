
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_hardware ;
 int hb_avcodec_init () ;
 int hb_buffer_pool_init () ;
 int hb_common_global_init (int ) ;
 int hb_decavcodeca ;
 int hb_decavcodecv ;
 int hb_deccc608 ;
 int hb_declpcm ;
 int hb_decpgssub ;
 int hb_decsrtsub ;
 int hb_decssasub ;
 int hb_dectx3gsub ;
 int hb_decutf8sub ;
 int hb_decvobsub ;
 int hb_encavcodec ;
 int hb_encavcodeca ;
 int hb_encca_aac ;
 int hb_encca_haac ;
 int hb_encqsv ;
 int hb_enctheora ;
 int hb_encvobsub ;
 int hb_encvorbis ;
 int hb_encx264 ;
 int hb_encx265 ;
 int hb_error (char*) ;
 int hb_log (char*) ;
 int hb_muxer ;
 int hb_param_configure_qsv () ;
 int hb_platform_init () ;
 int hb_presets_builtin_init () ;
 int hb_qsv_info_init () ;
 int hb_reader ;
 int hb_register (int *) ;
 int hb_sync_audio ;
 int hb_sync_subtitle ;
 int hb_sync_video ;
 int hb_x264_global_init () ;

int hb_global_init()
{





    int result = 0;

    result = hb_platform_init();
    if (result < 0)
    {
        hb_error("Platform specific initialization failed!");
        return -1;
    }
    hb_avcodec_init();


    hb_register(&hb_muxer);
    hb_register(&hb_reader);
    hb_register(&hb_sync_video);
    hb_register(&hb_sync_audio);
    hb_register(&hb_sync_subtitle);
    hb_register(&hb_decavcodecv);
    hb_register(&hb_decavcodeca);
    hb_register(&hb_declpcm);
    hb_register(&hb_deccc608);
    hb_register(&hb_decpgssub);
    hb_register(&hb_decsrtsub);
    hb_register(&hb_decssasub);
    hb_register(&hb_dectx3gsub);
    hb_register(&hb_decutf8sub);
    hb_register(&hb_decvobsub);
    hb_register(&hb_encvobsub);
    hb_register(&hb_encavcodec);
    hb_register(&hb_encavcodeca);




    hb_register(&hb_enctheora);
    hb_register(&hb_encvorbis);
    hb_register(&hb_encx264);
    hb_x264_global_init();
    hb_common_global_init(disable_hardware);




    hb_buffer_pool_init();


    hb_presets_builtin_init();

    return result;
}
