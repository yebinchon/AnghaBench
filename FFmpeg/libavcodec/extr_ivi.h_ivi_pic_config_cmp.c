
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pic_width; scalar_t__ pic_height; scalar_t__ chroma_width; scalar_t__ chroma_height; scalar_t__ tile_width; scalar_t__ tile_height; scalar_t__ luma_bands; scalar_t__ chroma_bands; } ;
typedef TYPE_1__ IVIPicConfig ;



__attribute__((used)) static inline int ivi_pic_config_cmp(IVIPicConfig *str1, IVIPicConfig *str2)
{
    return str1->pic_width != str2->pic_width || str1->pic_height != str2->pic_height ||
           str1->chroma_width != str2->chroma_width || str1->chroma_height != str2->chroma_height ||
           str1->tile_width != str2->tile_width || str1->tile_height != str2->tile_height ||
           str1->luma_bands != str2->luma_bands || str1->chroma_bands != str2->chroma_bands;
}
