
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_job_t ;
typedef int hb_dict_t ;


 int * hb_job_to_dict (int const*) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;

char* hb_job_to_json( const hb_job_t * job )
{
    hb_dict_t *dict = hb_job_to_dict(job);

    if (dict == ((void*)0))
        return ((void*)0);

    char *json_job = hb_value_get_json(dict);
    hb_value_free(&dict);

    return json_job;
}
