
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef scalar_t__ uint32_t ;


 int BOOTPROFILE_LOCK () ;
 int BOOTPROFILE_UNLOCK () ;
 int KERN_NO_SPACE ;
 scalar_t__ bootprofile_buffer ;
 scalar_t__ bootprofile_buffer_current_position ;
 scalar_t__ bootprofile_interval_abs ;
 int copyout (void*,int ,scalar_t__) ;

int bootprofile_gather(user_addr_t buffer, uint32_t *length)
{
 int result = 0;

 BOOTPROFILE_LOCK();

 if (bootprofile_buffer == 0) {
  *length = 0;
  goto out;
 }

 if (*length < bootprofile_buffer_current_position) {
  result = KERN_NO_SPACE;
  goto out;
 }

 if ((result = copyout((void *)bootprofile_buffer, buffer,
     bootprofile_buffer_current_position)) != 0) {
  *length = 0;
  goto out;
 }
 *length = bootprofile_buffer_current_position;


 bootprofile_interval_abs = 0;

out:

 BOOTPROFILE_UNLOCK();

 return (result);
}
