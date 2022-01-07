
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;
typedef int GtkImage ;
typedef int GhbValue ;


 int GHB_ICON_SIZE_BUTTON ;





 int GHB_WIDGET (int ,char*) ;
 int * GTK_IMAGE (int ) ;
 int * GTK_LIST_BOX (int ) ;
 int GTK_WIDGET (int *) ;
 int find_widget (int ,char*) ;
 int * ghb_array_get (int ,int) ;
 int ghb_array_len (int ) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 int ghb_image_set_from_icon_name (int *,char const*,int ) ;
 int * gtk_list_box_get_row_at_index (int *,int) ;

void
ghb_queue_update_status_icon(signal_user_data_t *ud, int index)
{
    int count = ghb_array_len(ud->queue);
    if (index < 0 || index >= count)
    {

        return;
    }

    GhbValue * queueDict, * uiDict;
    queueDict = ghb_array_get(ud->queue, index);
    if (queueDict == ((void*)0))
    {
        return;
    }
    uiDict = ghb_dict_get(queueDict, "uiSettings");
    if (uiDict == ((void*)0))
    {
        return;
    }

    int status = ghb_dict_get_int(uiDict, "job_status");


    const char * icon_name;
    switch (status)
    {
        case 128:
             icon_name = "hb-start";
            break;
        case 129:
             icon_name = "hb-source";
            break;
        case 130:
        case 132:
             icon_name = "hb-stop";
            break;
        case 131:
             icon_name = "hb-complete";
            break;
        default:
             icon_name = "hb-source";
            break;
    }
    GtkListBox * lb;
    GtkListBoxRow * row;
    GtkImage * status_icon;

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_row_at_index(lb, index);
    if (row == ((void*)0))
    {
        return;
    }
    status_icon = GTK_IMAGE(find_widget(GTK_WIDGET(row), "queue_item_status"));
    if (status_icon == ((void*)0))
    {
        return;
    }
    ghb_image_set_from_icon_name(status_icon, icon_name,
                                 GHB_ICON_SIZE_BUTTON);
}
