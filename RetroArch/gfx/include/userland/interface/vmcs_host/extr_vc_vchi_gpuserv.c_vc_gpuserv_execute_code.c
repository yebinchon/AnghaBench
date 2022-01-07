
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gpu_job_s {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {int size; struct gpu_job_s* data; } ;
typedef TYPE_1__ VCHIQ_ELEMENT_T ;
struct TYPE_5__ {int service; } ;


 int MAX_JOBS ;
 scalar_t__ VCHIQ_SUCCESS ;
 int VCOS_FUNCTION ;
 TYPE_3__ gpuserv_client ;
 int vc_gpuserv_init () ;
 scalar_t__ vchiq_queue_message (int ,TYPE_1__*,int) ;
 int vcos_log_error (char*,int ) ;

int32_t vc_gpuserv_execute_code(int num_jobs, struct gpu_job_s jobs[])
{
   VCHIQ_ELEMENT_T elements[MAX_JOBS];
   int i;



   if (!gpuserv_client.service)
   {
      vc_gpuserv_init();
      vcos_log_error("%s: called without calling vc_gpuserv_init", VCOS_FUNCTION);
   }

   if (!gpuserv_client.service)
   {
      vcos_log_error("%s: vchiq service not initialised", VCOS_FUNCTION);
      return -1;
   }
   if (num_jobs > MAX_JOBS)
      return -1;

   for (i=0; i<num_jobs; i++)
   {
      elements[i].data = jobs + i;
      elements[i].size = sizeof *jobs;
   }
   if (vchiq_queue_message(gpuserv_client.service, elements, num_jobs) != VCHIQ_SUCCESS)
   {
      goto error_exit;
   }
   return 0;
   error_exit:
   return -1;
}
