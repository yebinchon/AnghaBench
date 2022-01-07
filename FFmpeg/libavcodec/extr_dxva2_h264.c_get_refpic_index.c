
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bPicEntry; } ;
struct TYPE_4__ {TYPE_3__* RefFrameList; } ;
typedef TYPE_1__ DXVA_PicParams_H264 ;


 int FF_ARRAY_ELEMS (TYPE_3__*) ;

__attribute__((used)) static int get_refpic_index(const DXVA_PicParams_H264 *pp, int surface_index)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(pp->RefFrameList); i++) {
        if ((pp->RefFrameList[i].bPicEntry & 0x7f) == surface_index)
          return i;
    }
    return 0x7f;
}
