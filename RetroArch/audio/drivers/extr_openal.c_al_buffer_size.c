
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_buffers; } ;
typedef TYPE_1__ al_t ;


 int BUFSIZE ;

__attribute__((used)) static size_t al_buffer_size(void *data)
{
   al_t *al = (al_t*)data;
   return (al->num_buffers + 1) * BUFSIZE;
}
