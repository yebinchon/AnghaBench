
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shutdown; scalar_t__ cond; scalar_t__ cond_lock; int ** buffer; int * client; } ;
typedef TYPE_1__ jack_t ;


 int free (TYPE_1__*) ;
 int jack_client_close (int *) ;
 int jack_deactivate (int *) ;
 int jack_ringbuffer_free (int *) ;
 int scond_free (scalar_t__) ;
 int slock_free (scalar_t__) ;

__attribute__((used)) static void ja_free(void *data)
{
   int i;
   jack_t *jd = (jack_t*)data;

   jd->shutdown = 1;

   if (jd->client != ((void*)0))
   {
      jack_deactivate(jd->client);
      jack_client_close(jd->client);
   }

   for (i = 0; i < 2; i++)
      if (jd->buffer[i] != ((void*)0))
         jack_ringbuffer_free(jd->buffer[i]);







   free(jd);
}
