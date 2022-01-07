
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* less ) (int ,int ) ;int * data; } ;
typedef TYPE_1__ Heap ;


 int stub1 (int ,int ) ;

__attribute__((used)) static int
less(Heap *h, size_t a, size_t b)
{
    return h->less(h->data[a], h->data[b]);
}
