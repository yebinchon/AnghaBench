
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int hb_get_title_set (int *) ;
 int * hb_title_set_to_dict (int ) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;

char* hb_get_title_set_json( hb_handle_t * h )
{
    hb_dict_t *dict = hb_title_set_to_dict(hb_get_title_set(h));

    char *json_title_set = hb_value_get_json(dict);
    hb_value_free(&dict);

    return json_title_set;
}
