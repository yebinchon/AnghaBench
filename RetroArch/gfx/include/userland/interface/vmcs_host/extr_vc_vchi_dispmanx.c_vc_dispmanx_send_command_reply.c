
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int dispmanx_send_command_reply (int ,void*,int ,void*,int ) ;

int32_t vc_dispmanx_send_command_reply (uint32_t command, void *buffer, uint32_t length,
                                        void *response, uint32_t max_length)
{
  return dispmanx_send_command_reply (command, buffer, length, response, max_length);
}
