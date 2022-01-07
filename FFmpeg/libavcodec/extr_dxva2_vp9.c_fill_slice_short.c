
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int BSNALunitDataLocation; unsigned int SliceBytesInBuffer; scalar_t__ wBadSliceChopping; } ;
typedef TYPE_1__ DXVA_Slice_VPx_Short ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void fill_slice_short(DXVA_Slice_VPx_Short *slice,
                             unsigned position, unsigned size)
{
    memset(slice, 0, sizeof(*slice));
    slice->BSNALunitDataLocation = position;
    slice->SliceBytesInBuffer = size;
    slice->wBadSliceChopping = 0;
}
