
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* wavetable; } ;
struct TYPE_3__ {void* wavetable; } ;
struct tremolo {TYPE_2__ right; TYPE_1__ left; } ;


 int free (void*) ;

__attribute__((used)) static void tremolo_free(void *data)
{
   struct tremolo *tre = (struct tremolo*)data;
   free(tre->left.wavetable);
   free(tre->right.wavetable);
   free(data);
}
