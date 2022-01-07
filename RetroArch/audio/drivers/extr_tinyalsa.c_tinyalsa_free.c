
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pcm; } ;
typedef TYPE_1__ tinyalsa_t ;


 int free (TYPE_1__*) ;
 int pcm_close (int *) ;

__attribute__((used)) static void tinyalsa_free(void *data)
{
   tinyalsa_t *tinyalsa = (tinyalsa_t*)data;

   if (tinyalsa)
   {
      if (tinyalsa->pcm)
         pcm_close(tinyalsa->pcm);

      tinyalsa->pcm = ((void*)0);
      free(tinyalsa);
   }
}
