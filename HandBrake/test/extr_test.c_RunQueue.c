
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int hb_handle_t ;
typedef int hb_dict_t ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 int RunQueueJob (int *,int ) ;
 scalar_t__ die ;
 int fprintf (int ,char*,char const*) ;
 int hb_dict_get (int *,char*) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int * hb_value_read_json (char const*) ;
 scalar_t__ hb_value_type (int *) ;
 int stderr ;

int RunQueue(hb_handle_t *h, const char *queue_import_name)
{
    hb_value_t * queue = hb_value_read_json(queue_import_name);

    if (hb_value_type(queue) == HB_VALUE_TYPE_DICT)
    {
        return RunQueueJob(h, hb_dict_get(queue, "Job"));
    }
    else if (hb_value_type(queue) == HB_VALUE_TYPE_ARRAY)
    {
        int ii, count, result = 0;

        count = hb_value_array_len(queue);
        for (ii = 0; ii < count; ii++)
        {
            hb_dict_t * entry = hb_value_array_get(queue, ii);
            int ret = RunQueueJob(h, hb_dict_get(entry, "Job"));
            if (ret < 0)
            {
                result = ret;
            }
            if (die)
            {
                break;
            }
        }
        return result;
    }
    else
    {
        fprintf(stderr, "Error: Invalid queue file %s\n", queue_import_name);
        return -1;
    }
    return 0;
}
