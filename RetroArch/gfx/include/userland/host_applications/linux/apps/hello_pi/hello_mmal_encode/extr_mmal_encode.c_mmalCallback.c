
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_WRAPPER_T ;


 int sem ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void mmalCallback(MMAL_WRAPPER_T* encoder)
{
   vcos_semaphore_post(&sem);
}
