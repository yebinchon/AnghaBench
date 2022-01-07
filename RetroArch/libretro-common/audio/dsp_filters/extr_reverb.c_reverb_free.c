
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** bufcomb; void** bufallpass; } ;
struct TYPE_4__ {void** bufcomb; void** bufallpass; } ;
struct reverb_data {TYPE_1__ right; TYPE_2__ left; } ;


 int free (void*) ;
 unsigned int numallpasses ;
 unsigned int numcombs ;

__attribute__((used)) static void reverb_free(void *data)
{
   struct reverb_data *rev = (struct reverb_data*)data;
   unsigned i;

   for (i = 0; i < numcombs; i++) {
   free(rev->left.bufcomb[i]);
   free(rev->right.bufcomb[i]);
   }

   for (i = 0; i < numallpasses; i++) {
   free(rev->left.bufallpass[i]);
   free(rev->right.bufallpass[i]);
   }
   free(data);
}
