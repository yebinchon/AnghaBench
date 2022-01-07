
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int payload_ref; } ;
typedef TYPE_1__ AV1RawPadding ;


 int av_buffer_unref (int *) ;

__attribute__((used)) static void cbs_av1_free_padding(AV1RawPadding *pd)
{
    av_buffer_unref(&pd->payload_ref);
}
