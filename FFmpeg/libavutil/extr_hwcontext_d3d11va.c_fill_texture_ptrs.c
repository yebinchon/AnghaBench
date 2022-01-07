
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int sw_format; } ;
struct TYPE_8__ {int RowPitch; scalar_t__ pData; } ;
struct TYPE_7__ {int Height; } ;
typedef TYPE_1__ D3D11_TEXTURE2D_DESC ;
typedef TYPE_2__ D3D11_MAPPED_SUBRESOURCE ;
typedef TYPE_3__ AVHWFramesContext ;


 int av_image_fill_pointers (int **,int ,int ,int *,int*) ;

__attribute__((used)) static void fill_texture_ptrs(uint8_t *data[4], int linesize[4],
                              AVHWFramesContext *ctx,
                              D3D11_TEXTURE2D_DESC *desc,
                              D3D11_MAPPED_SUBRESOURCE *map)
{
    int i;

    for (i = 0; i < 4; i++)
        linesize[i] = map->RowPitch;

    av_image_fill_pointers(data, ctx->sw_format, desc->Height,
                           (uint8_t*)map->pData, linesize);
}
