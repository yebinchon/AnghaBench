
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_title_t ;
typedef int hb_job_t ;
typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int hb_error (char*,int) ;
 int * hb_find_title_by_index (int *,int) ;
 int hb_job_close (int **) ;
 int * hb_job_init (int *) ;
 int * hb_job_to_dict (int *) ;
 scalar_t__ hb_preset_apply_filters (int const*,int *) ;
 scalar_t__ hb_preset_apply_mux (int const*,int *) ;
 scalar_t__ hb_preset_apply_title (int *,int,int const*,int *) ;
 scalar_t__ hb_preset_apply_video (int const*,int *) ;
 int hb_value_free (int **) ;

hb_dict_t* hb_preset_job_init(hb_handle_t *h, int title_index,
                              const hb_dict_t *preset)
{
    hb_title_t *title = hb_find_title_by_index(h, title_index);
    if (title == ((void*)0))
    {
        hb_error("Invalid title index (%d)", title_index);
        return ((void*)0);
    }

    hb_job_t *job = hb_job_init(title);
    hb_dict_t *job_dict = hb_job_to_dict(job);
    hb_job_close(&job);

    if (hb_preset_apply_mux(preset, job_dict) < 0)
        goto fail;

    if (hb_preset_apply_video(preset, job_dict) < 0)
        goto fail;

    if (hb_preset_apply_filters(preset, job_dict) < 0)
        goto fail;

    if (hb_preset_apply_title(h, title_index, preset, job_dict) < 0)
        goto fail;

    return job_dict;

fail:
    hb_value_free(&job_dict);
    return ((void*)0);
}
