
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_t ;
typedef int hb_value_array_t ;
struct TYPE_3__ {scalar_t__ enforce_order; } ;
typedef TYPE_1__ hb_filter_object_t ;
typedef int hb_dict_t ;


 int hb_dict_get_int (int *,char*) ;
 int hb_error (char*,int) ;
 TYPE_1__* hb_filter_get (int) ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_insert (int *,int,int *) ;
 int hb_value_array_len (int *) ;
 int hb_value_free (int **) ;

void hb_add_filter2( hb_value_array_t * list, hb_dict_t * filter_dict )
{
    int new_id = hb_dict_get_int(filter_dict, "ID");

    hb_filter_object_t * filter = hb_filter_get(new_id);
    if (filter == ((void*)0))
    {
        hb_error("hb_add_filter2: Invalid filter ID %d", new_id);
        hb_value_free(&filter_dict);
        return;
    }
    if (filter->enforce_order)
    {

        int ii, len;

        len = hb_value_array_len(list);
        for( ii = 0; ii < len; ii++ )
        {
            hb_value_t * f = hb_value_array_get(list, ii);
            int id = hb_dict_get_int(f, "ID");
            if (id > new_id)
            {
                hb_value_array_insert(list, ii, filter_dict);
                return;
            }
            else if ( id == new_id )
            {

                hb_value_free(&filter_dict);
                return;
            }
        }
    }

    hb_value_array_append(list, filter_dict);
}
