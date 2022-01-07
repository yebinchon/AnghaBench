
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_vectors; } ;
typedef TYPE_1__ COOKContext ;


 int FF_ARRAY_ELEMS (int ) ;
 int dither_tab ;

__attribute__((used)) static inline void expand_category(COOKContext *q, int *category,
                                   int *category_index)
{
    int i;
    for (i = 0; i < q->num_vectors; i++)
    {
        int idx = category_index[i];
        if (++category[idx] >= FF_ARRAY_ELEMS(dither_tab))
            --category[idx];
    }
}
