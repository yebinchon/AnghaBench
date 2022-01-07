
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_state_t ;
typedef int hb_handle_t ;
typedef int hb_dict_t ;


 int hb_get_state (int *,int *) ;
 int * hb_state_to_dict (int *) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;

char* hb_get_state_json( hb_handle_t * h )
{
    hb_state_t state;

    hb_get_state(h, &state);
    hb_dict_t *dict = hb_state_to_dict(&state);

    char *json_state = hb_value_get_json(dict);
    hb_value_free(&dict);

    return json_state;
}
