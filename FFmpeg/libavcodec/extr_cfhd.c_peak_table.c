
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {scalar_t__ level; int base; } ;
typedef TYPE_1__ Peak ;


 scalar_t__ abs (int ) ;
 int bytestream2_get_le16 (int *) ;

__attribute__((used)) static inline void peak_table(int16_t *band, Peak *peak, int length)
{
    int i;
    for (i = 0; i < length; i++)
        if (abs(band[i]) > peak->level)
            band[i] = bytestream2_get_le16(&peak->base);
}
