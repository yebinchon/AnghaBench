
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHI_INSTANCE_T ;
typedef int VCHI_CONNECTION_T ;


 int * global_connection ;
 int global_initialise_instance ;

void vc_host_get_vchi_state(VCHI_INSTANCE_T *initialise_instance, VCHI_CONNECTION_T **connection)
{
   if (initialise_instance) *initialise_instance = global_initialise_instance;
   if (connection) *connection = global_connection;
}
