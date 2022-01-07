
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ private; } ;
typedef TYPE_1__ SexyAL_device ;


 scalar_t__ write (int,void*,scalar_t__) ;

uint32_t SexyALI_OSS_RawWrite(SexyAL_device *device, void *data, uint32_t len)
{
 ssize_t bytes;

 bytes = write(*(int *)device->private,data,len);
 if(bytes <= 0) return(0);
 return(bytes);
}
