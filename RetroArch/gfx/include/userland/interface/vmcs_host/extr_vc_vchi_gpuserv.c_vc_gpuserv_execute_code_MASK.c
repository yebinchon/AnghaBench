#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gpu_job_s {int dummy; } ;
typedef  int int32_t ;
struct TYPE_4__ {int size; struct gpu_job_s* data; } ;
typedef  TYPE_1__ VCHIQ_ELEMENT_T ;
struct TYPE_5__ {int /*<<< orphan*/  service; } ;

/* Variables and functions */
 int MAX_JOBS ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 TYPE_3__ gpuserv_client ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int32_t FUNC3(int num_jobs, struct gpu_job_s jobs[])
{
   VCHIQ_ELEMENT_T elements[MAX_JOBS];
   int i;

   // hack: temporarily allow calling this function without calling vc_gpuserv_init
   // will be removed later
   if (!gpuserv_client.service)
   {
      FUNC0();
      FUNC2("%s: called without calling vc_gpuserv_init", VCOS_FUNCTION);
   }

   if (!gpuserv_client.service)
   {
      FUNC2("%s: vchiq service not initialised", VCOS_FUNCTION);
      return -1;
   }
   if (num_jobs > MAX_JOBS)
      return -1;

   for (i=0; i<num_jobs; i++)
   {
      elements[i].data = jobs + i;
      elements[i].size = sizeof *jobs;
   }
   if (FUNC1(gpuserv_client.service, elements, num_jobs) != VCHIQ_SUCCESS)
   {
      goto error_exit;
   }
   return 0;
   error_exit:
   return -1;
}