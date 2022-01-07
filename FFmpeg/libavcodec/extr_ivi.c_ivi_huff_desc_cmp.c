
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_rows; int xbits; } ;
typedef TYPE_1__ IVIHuffDesc ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int ivi_huff_desc_cmp(const IVIHuffDesc *desc1,
                             const IVIHuffDesc *desc2)
{
    return desc1->num_rows != desc2->num_rows ||
           memcmp(desc1->xbits, desc2->xbits, desc1->num_rows);
}
