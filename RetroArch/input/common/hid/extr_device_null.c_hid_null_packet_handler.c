
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int hid_null_instance_t ;


 int RARCH_LOG_BUFFER (int *,int ) ;

__attribute__((used)) static void hid_null_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   hid_null_instance_t *instance = (hid_null_instance_t *)data;
   if (!instance)
      return;

   RARCH_LOG_BUFFER(packet, size);
}
