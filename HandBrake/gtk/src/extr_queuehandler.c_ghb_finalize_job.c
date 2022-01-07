
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_dict_t ;
typedef int GhbValue ;


 int HB_FILTER_CROP_SCALE ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,char*,int *) ;
 int ghb_dict_set_int (int *,char*,int) ;
 int * ghb_get_job_filter_list (int *) ;
 int * ghb_settings_to_preset (int *) ;
 int ghb_value_free (int **) ;
 int hb_add_filter2 (int *,int *) ;
 int hb_preset_apply_filters (int *,int *) ;
 int hb_preset_apply_mux (int *,int *) ;
 int hb_preset_apply_video (int *,int *) ;

void ghb_finalize_job(GhbValue *settings)
{
    GhbValue *preset, *job;

    preset = ghb_settings_to_preset(settings);
    job = ghb_dict_get(settings, "Job");


    hb_preset_apply_mux(preset, job);
    hb_preset_apply_video(preset, job);
    hb_preset_apply_filters(preset, job);


    GhbValue *filter_list, *filter_dict;
    int width, height, crop[4];

    filter_list = ghb_get_job_filter_list(settings);
    width = ghb_dict_get_int(settings, "scale_width");
    height = ghb_dict_get_int(settings, "scale_height");

    crop[0] = ghb_dict_get_int(settings, "PictureTopCrop");
    crop[1] = ghb_dict_get_int(settings, "PictureBottomCrop");
    crop[2] = ghb_dict_get_int(settings, "PictureLeftCrop");
    crop[3] = ghb_dict_get_int(settings, "PictureRightCrop");

    hb_dict_t * dict = ghb_dict_new();
    ghb_dict_set_int(dict, "width", width);
    ghb_dict_set_int(dict, "height", height);
    ghb_dict_set_int(dict, "crop-top", crop[0]);
    ghb_dict_set_int(dict, "crop-bottom", crop[1]);
    ghb_dict_set_int(dict, "crop-left", crop[2]);
    ghb_dict_set_int(dict, "crop-right", crop[3]);

    filter_dict = ghb_dict_new();
    ghb_dict_set_int(filter_dict, "ID", HB_FILTER_CROP_SCALE);
    ghb_dict_set(filter_dict, "Settings", dict);
    hb_add_filter2(filter_list, filter_dict);

    ghb_value_free(&preset);
}
