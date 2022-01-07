
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bPicEntry; } ;
typedef TYPE_1__ DXVA_PicEntry_VPx ;


 int av_assert0 (int) ;

__attribute__((used)) static void fill_picture_entry(DXVA_PicEntry_VPx *pic,
                               unsigned index, unsigned flag)
{
    av_assert0((index & 0x7f) == index && (flag & 0x01) == flag);
    pic->bPicEntry = index | (flag << 7);
}
