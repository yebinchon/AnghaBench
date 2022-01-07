
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ hb_filter_param_t ;


 char** calloc (int,int) ;
 TYPE_1__* filter_param_get_tunes_internal (int,int *) ;
 char* strdup (int *) ;

char ** hb_filter_get_tunes_name(int filter_id)
{
    int ii, count = 0;
    hb_filter_param_t * table;

    table = filter_param_get_tunes_internal(filter_id, ((void*)0));

    for (count = 0; table[count].name != ((void*)0); count++);
    char ** result = calloc(count + 1, sizeof(char*));
    for (ii = 0; ii < count; ii++)
    {
        result[ii] = strdup(table[ii].name);
    }
    result[ii] = ((void*)0);

    return result;
}
