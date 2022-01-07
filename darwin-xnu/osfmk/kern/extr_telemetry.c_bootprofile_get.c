
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BOOTPROFILE_LOCK () ;
 int BOOTPROFILE_UNLOCK () ;
 scalar_t__ bootprofile_buffer ;
 int bootprofile_buffer_current_position ;

void bootprofile_get(void **buffer, uint32_t *length)
{
 BOOTPROFILE_LOCK();
 *buffer = (void*) bootprofile_buffer;
 *length = bootprofile_buffer_current_position;
 BOOTPROFILE_UNLOCK();
}
