
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dummy; int suspend; int thread; } ;
typedef TYPE_1__ VCOS_THREAD_T ;
typedef scalar_t__ VCOS_STATUS_T ;


 scalar_t__ VCOS_SUCCESS ;
 int _vcos_thread_current_key ;
 int current_thread_key_init ;
 int current_thread_key_once ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_self () ;
 int pthread_setspecific (int ,TYPE_1__*) ;
 int vcos_assert (int ) ;
 int vcos_free (TYPE_1__*) ;
 scalar_t__ vcos_malloc (int,int *) ;
 int vcos_once (int *,int ) ;
 scalar_t__ vcos_semaphore_create (int *,int *,int ) ;

VCOS_THREAD_T *vcos_dummy_thread_create(void)
{
   VCOS_STATUS_T st;
   VCOS_THREAD_T *thread_hndl = ((void*)0);
   int rc;

   thread_hndl = (VCOS_THREAD_T *)vcos_malloc(sizeof(VCOS_THREAD_T), ((void*)0));
   vcos_assert(thread_hndl != ((void*)0));

   memset(thread_hndl, 0, sizeof(VCOS_THREAD_T));

   thread_hndl->dummy = 1;
   thread_hndl->thread = pthread_self();

   st = vcos_semaphore_create(&thread_hndl->suspend, ((void*)0), 0);
   if (st != VCOS_SUCCESS)
   {
      vcos_free(thread_hndl);
      return( thread_hndl );
   }

   vcos_once(&current_thread_key_once, current_thread_key_init);

   rc = pthread_setspecific(_vcos_thread_current_key,
                            thread_hndl);
   (void)rc;

   return( thread_hndl );
}
