
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_rows; int xbits; } ;
typedef TYPE_1__ IVIHuffDesc ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void ivi_huff_desc_copy(IVIHuffDesc *dst, const IVIHuffDesc *src)
{
    dst->num_rows = src->num_rows;
    memcpy(dst->xbits, src->xbits, src->num_rows);
}
