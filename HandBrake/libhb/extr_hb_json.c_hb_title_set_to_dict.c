
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_error_t ;
typedef int hb_title_t ;
struct TYPE_3__ {int list_title; int feature; } ;
typedef TYPE_1__ hb_title_set_t ;
typedef int hb_dict_t ;


 int * hb_dict_get (int *,char*) ;
 int hb_list_count (int ) ;
 int * hb_list_item (int ,int) ;
 int * hb_title_to_dict_internal (int *) ;
 int hb_value_array_append (int *,int *) ;
 int hb_value_int (int ) ;
 int * json_pack_ex (int *,int ,char*,char*,int ,char*) ;

hb_dict_t* hb_title_set_to_dict( const hb_title_set_t * title_set )
{
    hb_dict_t *dict;
    json_error_t error;
    int ii;

    dict = json_pack_ex(&error, 0,
        "{s:o, s:[]}",
        "MainFeature", hb_value_int(title_set->feature),
        "TitleList");

    hb_dict_t *title_list = hb_dict_get(dict, "TitleList");
    for (ii = 0; ii < hb_list_count(title_set->list_title); ii++)
    {
        hb_title_t *title = hb_list_item(title_set->list_title, ii);
        hb_dict_t *title_dict = hb_title_to_dict_internal(title);
        hb_value_array_append(title_list, title_dict);
    }

    return dict;
}
