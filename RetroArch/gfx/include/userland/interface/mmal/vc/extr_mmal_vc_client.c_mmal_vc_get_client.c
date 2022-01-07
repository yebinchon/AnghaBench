
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_CLIENT_T ;


 int client ;

MMAL_CLIENT_T *mmal_vc_get_client(void)
{
   return &client;
}
