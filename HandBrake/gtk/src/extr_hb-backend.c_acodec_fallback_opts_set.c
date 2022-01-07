
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gchar ;


 int HB_ACODEC_PASS_FLAG ;
 int audio_encoder_opts_set_with_mask (int ,int const*,int ,int ) ;

__attribute__((used)) static void
acodec_fallback_opts_set(signal_user_data_t *ud, const gchar *name,
                         void *opts, const void* data)
{
    (void)opts;
    (void)data;

    audio_encoder_opts_set_with_mask(ud->builder, name, ~0, HB_ACODEC_PASS_FLAG);
}
