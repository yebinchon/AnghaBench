
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * keyfile; } ;
typedef TYPE_1__ YuiPage ;
typedef int GtkWidget ;
typedef int GKeyFile ;


 int * GTK_WIDGET (int ) ;
 TYPE_1__* YUI_PAGE (int *) ;
 int g_object_new (int ,int *) ;
 int yui_page_get_type () ;

GtkWidget * yui_page_new(GKeyFile * keyfile) {
 GtkWidget * widget;
 YuiPage * yp;

 widget = GTK_WIDGET(g_object_new(yui_page_get_type(), ((void*)0)));
 yp = YUI_PAGE(widget);

 yp->keyfile = keyfile;

 return widget;
}
