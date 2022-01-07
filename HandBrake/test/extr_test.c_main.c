
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;
typedef int hb_dict_t ;


 scalar_t__ CheckOptions (int,char**) ;
 int EventLoop (int *,int *) ;
 int HB_ERROR_WRONG_INPUT ;
 char* HB_PROJECT_HOST_TITLE ;
 char* HB_PROJECT_TITLE ;
 char* HB_PROJECT_URL_WEBSITE ;
 scalar_t__ ParseOptions (int,char**) ;
 int * PreparePreset (char*) ;
 int RunQueue (int *,int *) ;
 int SIGINT ;
 int SigHandler ;
 int abitrates ;
 char* acodec_fallback ;
 int acodecs ;
 int acompressions ;
 char* advanced_opts ;
 int aqualities ;
 int arates ;
 int atracks ;
 int audio_copy_list ;
 int audio_dither ;
 int audio_gain ;
 int audio_lang_list ;
 char* chroma_smooth ;
 char* chroma_smooth_tune ;
 char* deblock ;
 char* deblock_tune ;
 int debug ;
 char* decomb ;
 char* deinterlace ;
 char* detelecine ;
 int done_error ;
 int dvdnav ;
 int dynamic_range_compression ;
 char* encoder_level ;
 char* encoder_preset ;
 char* encoder_profile ;
 char* encoder_tune ;
 char* format ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int get_argv_utf8 (int*,char***) ;
 int hb_cli_error_handler ;
 int hb_close (int **) ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_dvd_set_dvdnav (int ) ;
 int hb_get_cpu_count () ;
 int hb_global_close () ;
 int hb_global_init () ;
 int * hb_init (int) ;
 int hb_log_level_set (int *,int ) ;
 int hb_presets_builtin_update () ;
 int hb_presets_cli_default_init () ;
 char* hb_presets_package_json (int *) ;
 int hb_presets_write_json (int *,char*) ;
 int hb_register_error_handler (int *) ;
 int hb_scan (int *,char*,scalar_t__,int ,int ,long long) ;
 int hb_str_vfree (int ) ;
 int hb_system_sleep_prevent (int *) ;
 int hb_value_free (int **) ;
 int hb_value_string (char*) ;
 char* hqdn3d ;
 char* input ;
 char* lapsharp ;
 char* lapsharp_tune ;
 scalar_t__ main_feature ;
 long long min_title_duration ;
 int mixdowns ;
 char* native_language ;
 char* nlmeans ;
 char* nlmeans_tune ;
 char* output ;
 char* preset_export_desc ;
 char* preset_export_file ;
 char* preset_export_name ;
 char* preset_name ;
 int preview_count ;
 int * queue_import_name ;
 char* rotate ;
 int signal (int ,int ) ;
 int stderr ;
 int stdout ;
 int store_previews ;
 int subtitle_lang_list ;
 int subtracks ;
 int test_tty () ;
 scalar_t__ titleindex ;
 int titlescan ;
 char* unsharp ;
 char* unsharp_tune ;

int main( int argc, char ** argv )
{
    hb_handle_t * h;

    hb_global_init();
    hb_presets_builtin_update();
    hb_presets_cli_default_init();


    h = hb_init(4);

    test_tty();


    get_argv_utf8(&argc, &argv);


    if( ParseOptions( argc, argv ) ||
        CheckOptions( argc, argv ) )
    {
        hb_log_level_set(h, debug);
        goto cleanup;
    }

    hb_log_level_set(h, debug);


    hb_register_error_handler(&hb_cli_error_handler);

    hb_dvd_set_dvdnav( dvdnav );


    fprintf( stderr, "%s - %s - %s\n",
             HB_PROJECT_TITLE, HB_PROJECT_HOST_TITLE, HB_PROJECT_URL_WEBSITE );


    fprintf( stderr, "%d CPU%s detected\n", hb_get_cpu_count(),
             hb_get_cpu_count() > 1 ? "s" : "" );


    signal( SIGINT, SigHandler );

    if (queue_import_name != ((void*)0))
    {
        hb_system_sleep_prevent(h);
        RunQueue(h, queue_import_name);
    }
    else
    {



        hb_dict_t *preset_dict = PreparePreset(preset_name);
        if (preset_dict == ((void*)0))
        {


            done_error = HB_ERROR_WRONG_INPUT;
            goto cleanup;
        }

        if (preset_export_name != ((void*)0))
        {
            hb_dict_set(preset_dict, "PresetName",
                        hb_value_string(preset_export_name));
            if (preset_export_desc != ((void*)0))
            {
                hb_dict_set(preset_dict, "PresetDescription",
                            hb_value_string(preset_export_desc));
            }
            if (preset_export_file != ((void*)0))
            {
                hb_presets_write_json(preset_dict, preset_export_file);
            }
            else
            {
                char *json;
                json = hb_presets_package_json(preset_dict);
                fprintf(stdout, "%s\n", json);
            }


            if (input == ((void*)0) ||
                (!titlescan && titleindex != 0 && output == ((void*)0)))
            {
                hb_value_free(&preset_dict);
                goto cleanup;
            }
        }


        fprintf( stderr, "Opening %s...\n", input );

        if (main_feature) {




            titleindex = 0;
        }

        hb_system_sleep_prevent(h);

        hb_scan(h, input, titleindex, preview_count, store_previews,
                min_title_duration * 90000LL);

        EventLoop(h, preset_dict);
        hb_value_free(&preset_dict);
    }

cleanup:

    hb_close(&h);
    hb_global_close();
    hb_str_vfree(audio_copy_list);
    hb_str_vfree(abitrates);
    hb_str_vfree(acompressions);
    hb_str_vfree(aqualities);
    hb_str_vfree(audio_dither);
    hb_str_vfree(acodecs);
    hb_str_vfree(arates);
    hb_str_vfree(atracks);
    hb_str_vfree(audio_lang_list);
    hb_str_vfree(audio_gain);
    hb_str_vfree(dynamic_range_compression);
    hb_str_vfree(mixdowns);
    hb_str_vfree(subtitle_lang_list);
    hb_str_vfree(subtracks);
    free(acodec_fallback);
    free(native_language);
    free(format);
    free(input);
    free(output);
    free(preset_name);
    free(encoder_preset);
    free(encoder_tune);
    free(advanced_opts);
    free(encoder_profile);
    free(encoder_level);
    free(rotate);
    free(deblock);
    free(deblock_tune);
    free(detelecine);
    free(deinterlace);
    free(decomb);
    free(hqdn3d);
    free(nlmeans);
    free(nlmeans_tune);
    free(chroma_smooth);
    free(chroma_smooth_tune);
    free(unsharp);
    free(unsharp_tune);
    free(lapsharp);
    free(lapsharp_tune);
    free(preset_export_name);
    free(preset_export_desc);
    free(preset_export_file);



    fprintf(stdout, "\n");
    fprintf(stderr, "HandBrake has exited.\n");

    return done_error;
}
