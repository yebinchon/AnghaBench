#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_7__ {int config_size; int /*<<< orphan*/ * pconfig; } ;
typedef  TYPE_2__ VCHIQ_GET_CONFIG_T ;
typedef  int /*<<< orphan*/  VCHIQ_CONFIG_T ;
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_ERROR ; 
 int /*<<< orphan*/  VCHIQ_IOC_GET_CONFIG ; 
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

VCHIQ_STATUS_T
FUNC3(VCHIQ_INSTANCE_T instance,
   int config_size,
   VCHIQ_CONFIG_T *pconfig)
{
   VCHIQ_GET_CONFIG_T args;
   int ret;

   if (!FUNC2(instance))
      return VCHIQ_ERROR;

   args.config_size = config_size;
   args.pconfig = pconfig;

   FUNC0(ret, FUNC1(instance->fd, VCHIQ_IOC_GET_CONFIG, &args));

   return (ret >= 0) ? VCHIQ_SUCCESS : VCHIQ_ERROR;
}