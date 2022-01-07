
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_title_t ;
struct TYPE_4__ {int feature; int list_title; } ;
typedef TYPE_1__ hb_title_set_t ;
typedef int hb_dict_t ;


 int PrintTitleInfo (int *,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int hb_list_count (int ) ;
 int * hb_list_item (int ,int) ;
 int * hb_title_set_to_dict (TYPE_1__*) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 scalar_t__ json ;
 int stdout ;

__attribute__((used)) static void PrintTitleSetInfo( hb_title_set_t * title_set )
{
    if (json)
    {
        hb_dict_t * title_set_dict;
        char * title_set_json;

        title_set_dict = hb_title_set_to_dict(title_set);
        title_set_json = hb_value_get_json(title_set_dict);
        hb_value_free(&title_set_dict);
        fprintf(stdout, "JSON Title Set: %s\n", title_set_json);
        free(title_set_json);
    }
    else
    {
        int i;
        hb_title_t * title;

        for( i = 0; i < hb_list_count( title_set->list_title ); i++ )
        {
            title = hb_list_item( title_set->list_title, i );
            PrintTitleInfo( title, title_set->feature );
        }
    }
}
