
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int count; TYPE_2__* object; } ;
typedef TYPE_1__ PGSSubObjects ;
typedef TYPE_2__ PGSSubObject ;



__attribute__((used)) static PGSSubObject * find_object(int id, PGSSubObjects *objects)
{
    int i;

    for (i = 0; i < objects->count; i++) {
        if (objects->object[i].id == id)
            return &objects->object[i];
    }
    return ((void*)0);
}
