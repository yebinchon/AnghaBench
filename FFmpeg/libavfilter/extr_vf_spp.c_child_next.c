
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* dct; } ;
typedef TYPE_1__ SPPContext ;



__attribute__((used)) static void *child_next(void *obj, void *prev)
{
    SPPContext *s = obj;
    return prev ? ((void*)0) : s->dct;
}
