
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int n ;
struct TYPE_5__ {int type; int size; int * symbols; int member_0; } ;
typedef TYPE_1__ PixelModel3 ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int update_model1_to_2(PixelModel3 *m, uint32_t val)
{
    PixelModel3 n = {0};
    int i, b;

    n.type = 2;
    n.size = m->size + 1;
    b = m->size;
    for (i = 0; i < b; i++)
        n.symbols[i] = m->symbols[i];
    n.symbols[b] = val;

    memcpy(m, &n, sizeof(n));

    return 0;
}
