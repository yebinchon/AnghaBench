
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* private; } ;
typedef TYPE_1__ SexyAL_device ;


 int close (int) ;
 int free (TYPE_1__*) ;

int SexyALI_OSS_Close(SexyAL_device *device)
{
 if(device)
 {
  if(device->private)
  {
   close(*(int*)device->private);
   free(device->private);
  }
  free(device);
  return(1);
 }
 return(0);
}
