
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_4__ {struct TYPE_4__* next; int data; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GList ;


 int GTK_CONTAINER (int *) ;
 scalar_t__ GTK_IS_CONTAINER (int *) ;
 int * GTK_WIDGET (int ) ;
 int g_list_free (TYPE_1__*) ;
 TYPE_1__* gtk_container_get_children (int ) ;
 char* gtk_widget_get_name (int *) ;
 int strncmp (char const*,int *,int) ;

__attribute__((used)) static GtkWidget *find_widget(GtkWidget *widget, gchar *name)
{
    const char *wname;
    GtkWidget *result = ((void*)0);

    if (widget == ((void*)0) || name == ((void*)0))
        return ((void*)0);

    wname = gtk_widget_get_name(widget);
    if (wname != ((void*)0) && !strncmp(wname, name, 80))
    {
        return widget;
    }
    if (GTK_IS_CONTAINER(widget))
    {
        GList *list, *link;
        link = list = gtk_container_get_children(GTK_CONTAINER(widget));
        while (link)
        {
            result = find_widget(GTK_WIDGET(link->data), name);
            if (result != ((void*)0))
                break;
            link = link->next;
        }
        g_list_free(list);
    }
    return result;
}
