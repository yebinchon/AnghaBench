
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef int GhbValue ;


 int * ghb_array_get (int *,scalar_t__) ;
 scalar_t__ ghb_array_len (int *) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_int (int *,char*) ;

gint
ghb_find_queue_job(GhbValue *queue, gint unique_id, GhbValue **job)
{
    GhbValue *queueDict, *uiDict;
    gint ii, count;
    gint job_unique_id;

    if (job != ((void*)0))
    {
        *job = ((void*)0);
    }
    if (unique_id == 0)
        return -1;

    count = ghb_array_len(queue);
    for (ii = 0; ii < count; ii++)
    {
        queueDict = ghb_array_get(queue, ii);
        uiDict = ghb_dict_get(queueDict, "uiSettings");
        job_unique_id = ghb_dict_get_int(uiDict, "job_unique_id");
        if (job_unique_id == unique_id)
        {
            if (job != ((void*)0))
            {
                *job = queueDict;
            }
            return ii;
        }
    }
    return -1;
}
