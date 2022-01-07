
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int size; int* symbols; } ;
typedef TYPE_1__ PixelModel3 ;


 int update_model2_to_3 (TYPE_1__*,int) ;
 int update_model2_to_6 (TYPE_1__*,int,int) ;

__attribute__((used)) static int decode_static2(PixelModel3 *m, uint32_t val)
{
    uint32_t size;

    size = m->size;
    for (int i = 0; i < size; i++) {
        if (val == m->symbols[i]) {
            int a;

            if (m->size <= 32)
                a = 32;
            else
                a = 64;
            return update_model2_to_6(m, val, a);
        }
    }

    if (size >= 64)
        return update_model2_to_3(m, val);

    m->symbols[size] = val;
    m->size++;

    return 0;
}
