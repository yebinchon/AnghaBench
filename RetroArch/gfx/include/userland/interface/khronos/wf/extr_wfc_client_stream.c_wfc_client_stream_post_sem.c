
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_SEMAPHORE_T ;


 int VCOS_FUNCTION ;
 int vcos_assert (int ) ;
 int vcos_log_trace (char*,int ,int *) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void wfc_client_stream_post_sem(void *cb_data)
{
   VCOS_SEMAPHORE_T *sem = (VCOS_SEMAPHORE_T *)cb_data;

   vcos_log_trace("%s: sem %p", VCOS_FUNCTION, sem);
   vcos_assert(sem != ((void*)0));
   vcos_semaphore_post(sem);
}
