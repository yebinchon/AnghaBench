
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_3__ {scalar_t__ high_priority; } ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;


 int vchiq_khhn_service ;
 int vchiq_khrn_service ;

__attribute__((used)) static VCHIQ_SERVICE_HANDLE_T get_handle(CLIENT_THREAD_STATE_T *thread)
{
   VCHIQ_SERVICE_HANDLE_T result = (thread->high_priority ? vchiq_khhn_service : vchiq_khrn_service);
    return result;
}
