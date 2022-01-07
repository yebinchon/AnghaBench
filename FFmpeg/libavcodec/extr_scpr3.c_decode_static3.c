
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int size; int* symbols; } ;
typedef TYPE_1__ PixelModel3 ;


 int update_model3_to_7 (TYPE_1__*,int) ;

__attribute__((used)) static int decode_static3(PixelModel3 *m, uint32_t val)
{
    uint32_t size = m->size;

    for (int i = 0; i < size; i++) {
        if (val == m->symbols[i])
            return update_model3_to_7(m, val);
    }

    if (size >= 256)
        return 0;

    m->symbols[size] = val;
    m->size++;
    return 0;
}
