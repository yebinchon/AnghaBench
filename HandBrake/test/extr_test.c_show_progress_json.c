
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_state_t ;
typedef int hb_dict_t ;


 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int * hb_state_to_dict (int *) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void show_progress_json(hb_state_t * state)
{
    hb_dict_t * state_dict;
    char * state_json;

    state_dict = hb_state_to_dict(state);
    state_json = hb_value_get_json(state_dict);
    hb_value_free(&state_dict);
    fprintf(stdout, "Progress: %s\n", state_json);
    free(state_json);
    fflush(stderr);
}
