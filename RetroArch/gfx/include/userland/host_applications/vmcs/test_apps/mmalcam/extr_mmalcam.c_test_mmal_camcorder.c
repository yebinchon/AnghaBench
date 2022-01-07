
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMALCAM_BEHAVIOUR_T ;


 int LOG_TRACE (char*,int) ;
 int stop ;
 int test_mmal_start_camcorder (int *,int *) ;

__attribute__((used)) static void *test_mmal_camcorder(void *id)
{
   MMALCAM_BEHAVIOUR_T *behaviour = (MMALCAM_BEHAVIOUR_T *)id;
   int value;

   value = test_mmal_start_camcorder(&stop, behaviour);

   LOG_TRACE("Thread terminating, result %d", value);
   return (void *)value;
}
