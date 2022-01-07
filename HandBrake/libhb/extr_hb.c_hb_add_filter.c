
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_job_t ;
typedef int hb_filter_object_t ;
typedef int hb_dict_t ;


 int hb_add_filter_dict (int *,int *,int *) ;
 int hb_log (char*) ;
 int * hb_parse_filter_settings (char const*) ;
 int hb_value_free (int **) ;

void hb_add_filter( hb_job_t * job, hb_filter_object_t * filter,
                    const char * settings_in )
{
    hb_dict_t * settings = hb_parse_filter_settings(settings_in);
    if (settings_in != ((void*)0) && settings == ((void*)0))
    {
        hb_log("hb_add_filter: failed to parse filter settings!");
        return;
    }
    hb_add_filter_dict(job, filter, settings);
    hb_value_free(&settings);
}
