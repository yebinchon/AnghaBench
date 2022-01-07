
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkListBoxRow ;
typedef int GtkEditable ;
typedef int GhbValue ;


 int GTK_WIDGET (int *) ;
 int * ghb_array_get (int const*,int) ;
 int ghb_dict_set_string (int *,char*,char const*) ;
 char* ghb_editable_get_text (int *) ;
 int * ghb_get_job_chapter_list (int ) ;
 int gtk_list_box_row_get_index (int *) ;
 int * list_box_get_row (int ) ;

__attribute__((used)) static void
chapter_changed_cb(
    GtkEditable * edit,
    signal_user_data_t *ud)
{
    GtkListBoxRow * row;
    const char * text;
    int index;

    row = list_box_get_row(GTK_WIDGET(edit));
    if (row == ((void*)0))
    {
        return;
    }
    index = gtk_list_box_row_get_index(row);
    text = ghb_editable_get_text(edit);
    if (text == ((void*)0))
    {
        return;
    }

    const GhbValue * chapter_list;
    GhbValue * chapter_dict;

    chapter_list = ghb_get_job_chapter_list(ud->settings);
    chapter_dict = ghb_array_get(chapter_list, index);
    if (chapter_dict == ((void*)0))
    {
        return;
    }
    ghb_dict_set_string(chapter_dict, "Name", text);
}
