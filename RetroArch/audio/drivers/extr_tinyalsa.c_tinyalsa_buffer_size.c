
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buffer_size; } ;
typedef TYPE_1__ tinyalsa_t ;



__attribute__((used)) static size_t tinyalsa_buffer_size(void *data)
{
 tinyalsa_t *tinyalsa = (tinyalsa_t*)data;

 return tinyalsa->buffer_size;
}
