
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int lock ;
 int vcos_demand (int) ;
 scalar_t__ vcos_mutex_create (int *,int ) ;

__attribute__((used)) static void initOnce(void)
{
   VCOS_STATUS_T status;
   status = vcos_mutex_create(&lock, VCOS_FUNCTION);
   vcos_demand(status == VCOS_SUCCESS);
}
