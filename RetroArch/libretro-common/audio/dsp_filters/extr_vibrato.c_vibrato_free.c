
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* buffer; } ;
struct TYPE_3__ {void* buffer; } ;
struct vibrato {TYPE_2__ right; TYPE_1__ left; } ;


 int free (void*) ;

__attribute__((used)) static void vibrato_free(void *data)
{
   struct vibrato *vib = (struct vibrato*)data;
   free(vib->left.buffer);
   free(vib->right.buffer);
   free(data);
}
