
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef scalar_t__ gboolean ;
struct TYPE_6__ {int live_id; int encode_frame; size_t frame; scalar_t__* encoded; int * current; int pause; } ;


 int GHB_PREVIEW_MAX ;
 int g_free (int *) ;
 int ghb_set_preview_image (TYPE_2__*) ;
 int ghb_stop_live_encode () ;
 int live_preview_stop (TYPE_2__*) ;
 int memset (scalar_t__*,int ,int) ;

void
ghb_live_reset(signal_user_data_t *ud)
{
    gboolean encoded;

    if (ud->preview->live_id >= 0)
    {
        ghb_stop_live_encode();
    }
    ud->preview->live_id = -1;
    ud->preview->encode_frame = -1;
    if (!ud->preview->pause)
        live_preview_stop(ud);
    if (ud->preview->current)
    {
        g_free(ud->preview->current);
        ud->preview->current = ((void*)0);
    }
    encoded = ud->preview->encoded[ud->preview->frame];
    memset(ud->preview->encoded, 0, sizeof(gboolean) * GHB_PREVIEW_MAX);
    if (encoded)
        ghb_set_preview_image(ud);
}
