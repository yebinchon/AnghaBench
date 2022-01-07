
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int stack_pos; scalar_t__* stack; } ;
typedef TYPE_1__ ePICContext ;



__attribute__((used)) static inline int is_pixel_on_stack(const ePICContext *dc, uint32_t pix)
{
    int i;

    for (i = 0; i < dc->stack_pos; i++)
        if (dc->stack[i] == pix)
            break;

    return i != dc->stack_pos;
}
