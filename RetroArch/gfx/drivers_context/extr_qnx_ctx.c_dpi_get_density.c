
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int screen_disp; } ;
typedef TYPE_1__ qnx_ctx_data_t ;


 int RARCH_ERR (char*) ;
 int SCREEN_PROPERTY_DPI ;
 int min (int,int) ;
 scalar_t__ screen_get_display_property_iv (int ,int ,int*) ;

__attribute__((used)) static int dpi_get_density(qnx_ctx_data_t *qnx)
{
    int screen_dpi[2];

    if(!qnx)
        return -1;

    if (screen_get_display_property_iv(qnx->screen_disp,
             SCREEN_PROPERTY_DPI, screen_dpi))
    {
       RARCH_ERR("screen_get_display_property_iv [SCREEN_PROPERTY_DPI] failed.\n");
       return -1;
    }

    return min(screen_dpi[0], screen_dpi[1]);
}
