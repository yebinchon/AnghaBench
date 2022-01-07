
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int PangoAttribute ;
typedef int PangoAttrList ;
typedef int GtkWidget ;


 int FALSE ;
 int GTK_LABEL (int *) ;
 int TRUE ;
 int * default_title_attrs ;
 int * find_widget (int *,char*) ;
 int gtk_label_set_attributes (int ,int *) ;
 int gtk_widget_set_has_tooltip (int *,int ) ;
 int gtk_widget_set_sensitive (int *,int ) ;
 int * pango_attr_background_new (int,int,int) ;
 int pango_attr_list_insert (int *,int *) ;
 int * pango_attr_list_new () ;

__attribute__((used)) static void
title_add_multiple_set_sensitive(GtkWidget *row, gboolean sensitive)
{
    GtkWidget *widget;
    widget = find_widget(row, "title_selected");
    gtk_widget_set_sensitive(widget, sensitive);

    widget = find_widget(row, "title_label");
    if (!sensitive)
    {
        PangoAttrList *pal;
        PangoAttribute *bg;
        bg = pango_attr_background_new(0xFFFF, 0xFFFF, 0xA000);
        pal = pango_attr_list_new();
        pango_attr_list_insert(pal, bg);
        gtk_label_set_attributes(GTK_LABEL(widget), pal);
        gtk_widget_set_has_tooltip(widget, TRUE);
    }
    else
    {
        gtk_label_set_attributes(GTK_LABEL(widget), default_title_attrs);
        gtk_widget_set_has_tooltip(widget, FALSE);
    }
}
