
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * previous; int * current; } ;
typedef TYPE_1__ Hnm4VideoContext ;



__attribute__((used)) static void hnm_flip_buffers(Hnm4VideoContext *hnm)
{
    uint8_t *temp;

    temp = hnm->current;
    hnm->current = hnm->previous;
    hnm->previous = temp;
}
