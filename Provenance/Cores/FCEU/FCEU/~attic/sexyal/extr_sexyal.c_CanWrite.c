
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int channels; int sampformat; } ;
struct TYPE_7__ {TYPE_1__ format; } ;
typedef TYPE_2__ SexyAL_device ;


 int SexyALI_DSound_RawCanWrite (TYPE_2__*) ;
 int SexyALI_OSS_RawCanWrite (TYPE_2__*) ;

__attribute__((used)) static uint32_t CanWrite(SexyAL_device *device)
{
 uint32_t bytes,frames;




 bytes=SexyALI_OSS_RawCanWrite(device);

 frames=bytes / device->format.channels / (device->format.sampformat>>4);

 return(frames);
}
