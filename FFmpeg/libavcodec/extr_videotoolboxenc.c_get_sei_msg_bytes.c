
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int data; } ;
typedef TYPE_1__ ExtraSEI ;


 int copy_emulation_prev (int ,int,int *,int ,int ) ;

__attribute__((used)) static int get_sei_msg_bytes(const ExtraSEI* sei, int type){
    int copied_size;
    if (sei->size == 0)
        return 0;

    copied_size = -copy_emulation_prev(sei->data,
                                       sei->size,
                                       ((void*)0),
                                       0,
                                       0);

    if ((sei->size % 255) == 0)
        copied_size++;

    return copied_size + sei->size / 255 + 1 + type / 255 + 1;
}
