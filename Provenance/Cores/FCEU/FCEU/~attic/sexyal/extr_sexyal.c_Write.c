
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_5__ {int format; int srcformat; } ;
typedef TYPE_1__ SexyAL_device ;


 int FtoB (int *,int) ;
 int SexiALI_Convert (int *,int *,int *,void*,int) ;
 int SexyALI_DSound_RawWrite (TYPE_1__*,int *,int ) ;
 int SexyALI_OSS_RawWrite (TYPE_1__*,int *,int ) ;

__attribute__((used)) static uint32_t Write(SexyAL_device *device, void *data, uint32_t frames)
{
 uint8_t buffer[2048*4];

 while(frames)
 {
  int32_t tmp;

  tmp=frames;
  if(tmp>2048)
  {
   tmp=2048;
   frames-=2048;
  }
  else frames-=tmp;

  SexiALI_Convert(&device->srcformat, &device->format, buffer, data, tmp);
  SexyALI_OSS_RawWrite(device,buffer,FtoB(&device->format,tmp));

 }
 return(frames);
}
