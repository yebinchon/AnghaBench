
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int * hb_title_to_dict (int *,int) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;

char* hb_title_to_json( hb_handle_t *h, int title_index )
{
    hb_dict_t *dict = hb_title_to_dict(h, title_index);
    if (dict == ((void*)0))
        return ((void*)0);

    char *json_title = hb_value_get_json(dict);
    hb_value_free(&dict);

    return json_title;
}
