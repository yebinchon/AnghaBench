
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gboolean ;
typedef int GtkScale ;
typedef int GtkAdjustment ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_RANGE (int *) ;
 int * GTK_SCALE (int ) ;
 int TRUE ;
 int adjustment_configure (int *,double,double,double,double,double,double) ;
 double gtk_adjustment_get_page_size (int *) ;
 int * gtk_range_get_adjustment (int ) ;
 int gtk_range_set_inverted (int ,int ) ;
 int gtk_scale_set_digits (int *,int) ;
 int gtk_scale_set_draw_value (int *,int ) ;

void
ghb_scale_configure(
    signal_user_data_t *ud,
    char *name,
    double val, double min, double max,
    double step, double page,
    int digits, gboolean inverted)
{
    GtkScale *scale;
    GtkAdjustment *adj;
    double page_sz;

    scale = GTK_SCALE(GHB_WIDGET(ud->builder, name));

    gtk_scale_set_draw_value(scale, FALSE);
    adj = gtk_range_get_adjustment(GTK_RANGE(scale));
    page_sz = gtk_adjustment_get_page_size(adj);

    adjustment_configure(adj, val, min, max, step, page, page_sz);

    gtk_scale_set_digits(scale, digits);
    gtk_range_set_inverted(GTK_RANGE(scale), inverted);
    gtk_scale_set_draw_value(scale, TRUE);
}
