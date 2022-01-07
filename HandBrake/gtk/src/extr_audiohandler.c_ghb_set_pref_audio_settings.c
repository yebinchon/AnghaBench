
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_create_copy_mask (int *) ;
 int ghb_dict_get_int (int *,char*) ;
 int ghb_dict_remove (int *,char*) ;
 int ghb_dict_set (int *,char*,int *) ;
 int * ghb_get_job_settings (int *) ;
 int ghb_scan_handle () ;
 int hb_preset_job_add_audio (int ,int,int *,int *) ;

void
ghb_set_pref_audio_settings(GhbValue *settings)
{
    int title_id;
    GhbValue *copy_mask;

    copy_mask = ghb_create_copy_mask(settings);
    ghb_dict_set(settings, "AudioCopyMask", copy_mask);
    title_id = ghb_dict_get_int(settings, "title");
    GhbValue *job = ghb_get_job_settings(settings);
    ghb_dict_remove(job, "Audio");
    hb_preset_job_add_audio(ghb_scan_handle(), title_id, settings, job);
}
