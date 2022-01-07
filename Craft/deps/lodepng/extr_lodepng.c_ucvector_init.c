
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ allocsize; scalar_t__ size; int * data; } ;
typedef TYPE_1__ ucvector ;



__attribute__((used)) static void ucvector_init(ucvector* p)
{
  p->data = ((void*)0);
  p->size = p->allocsize = 0;
}
