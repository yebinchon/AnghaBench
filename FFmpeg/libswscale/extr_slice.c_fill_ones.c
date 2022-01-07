
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_5__ {TYPE_1__* plane; } ;
struct TYPE_4__ {int available_lines; scalar_t__* line; } ;
typedef TYPE_2__ SwsSlice ;



__attribute__((used)) static void fill_ones(SwsSlice *s, int n, int is16bit)
{
    int i;
    for (i = 0; i < 4; ++i) {
        int j;
        int size = s->plane[i].available_lines;
        for (j = 0; j < size; ++j) {
            int k;
            int end = is16bit ? n>>1: n;

            end += 1;
            if (is16bit)
                for (k = 0; k < end; ++k)
                    ((int32_t*)(s->plane[i].line[j]))[k] = 1<<18;
            else
                for (k = 0; k < end; ++k)
                    ((int16_t*)(s->plane[i].line[j]))[k] = 1<<14;
        }
    }
}
