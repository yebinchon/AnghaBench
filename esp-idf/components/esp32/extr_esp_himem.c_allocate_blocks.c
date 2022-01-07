
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_2__ {int is_alloced; int is_mapped; } ;


 int assert (int) ;
 TYPE_1__* s_ram_descriptor ;
 int s_ramblockcnt ;

__attribute__((used)) static bool allocate_blocks(int count, uint16_t *blocks_out)
{
    int n = 0;
    for (int i = 0; i < s_ramblockcnt && n != count; i++) {
        if (!s_ram_descriptor[i].is_alloced) {
            blocks_out[n] = i;
            n++;
        }
    }
    if (n == count) {

        for (int i = 0; i < count; i++) {
            s_ram_descriptor[blocks_out[i]].is_alloced = 1;
            assert(s_ram_descriptor[blocks_out[i]].is_mapped == 0);
        }
        return 1;
    } else {

        return 0;
    }
}
