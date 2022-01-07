
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkSpinButton ;
typedef int GtkAdjustment ;


 int GHB_WIDGET (int ,char*) ;
 int * GTK_SPIN_BUTTON (int ) ;
 int adjustment_configure (int *,double,double,double,double,double,double) ;
 double gtk_adjustment_get_page_increment (int *) ;
 double gtk_adjustment_get_page_size (int *) ;
 double gtk_adjustment_get_step_increment (int *) ;
 int * gtk_spin_button_get_adjustment (int *) ;

__attribute__((used)) static void
spin_configure(signal_user_data_t *ud, char *name, double val, double min, double max)
{
    GtkSpinButton *spin;
    GtkAdjustment *adj;
    double step, page, page_sz;

    spin = GTK_SPIN_BUTTON(GHB_WIDGET(ud->builder, name));

    adj = gtk_spin_button_get_adjustment(spin);
    step = gtk_adjustment_get_step_increment(adj);
    page = gtk_adjustment_get_page_increment(adj);
    page_sz = gtk_adjustment_get_page_size(adj);

    adjustment_configure(adj, val, min, max, step, page, page_sz);
}
