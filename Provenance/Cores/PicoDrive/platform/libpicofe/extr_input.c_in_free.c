
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * binds; int * name; } ;
typedef TYPE_1__ in_dev_t ;


 int free (int *) ;
 int in_unprobe (TYPE_1__*) ;

__attribute__((used)) static void in_free(in_dev_t *dev)
{
 in_unprobe(dev);
 free(dev->name);
 dev->name = ((void*)0);
 free(dev->binds);
 dev->binds = ((void*)0);
}
