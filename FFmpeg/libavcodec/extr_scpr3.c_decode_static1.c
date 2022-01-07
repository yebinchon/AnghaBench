
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int size; int* symbols; } ;
typedef TYPE_1__ PixelModel3 ;


 int update_model1_to_2 (TYPE_1__*,int) ;
 int update_model1_to_4 (TYPE_1__*,int) ;
 int update_model1_to_5 (TYPE_1__*,int) ;

__attribute__((used)) static int decode_static1(PixelModel3 *m, uint32_t val)
{
    uint32_t size;

    size = m->size;
    for (int i = 0; i < size; i++) {
        if (val == m->symbols[i]) {
            if (size <= 4)
                return update_model1_to_4(m, val);
            else
                return update_model1_to_5(m, val);
        }
    }

    if (size >= 14)
        return update_model1_to_2(m, val);

    m->symbols[size] = val;
    m->size++;
    return 0;
}
