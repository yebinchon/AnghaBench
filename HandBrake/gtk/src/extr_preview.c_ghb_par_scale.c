
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int gint64 ;
typedef int gint ;


 int ghb_screen_par (int *,int*,int*) ;

void
ghb_par_scale(signal_user_data_t *ud, gint *width, gint *height, gint par_n, gint par_d)
{
    gint disp_par_n, disp_par_d;
    gint64 num, den;

    ghb_screen_par(ud, &disp_par_n, &disp_par_d);
    if (disp_par_n < 1 || disp_par_d < 1)
    {
        disp_par_n = 1;
        disp_par_d = 1;
    }
    num = par_n * disp_par_d;
    den = par_d * disp_par_n;

    if (par_n > par_d)
        *width = *width * num / den;
    else
        *height = *height * den / num;
}
