
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int SetConvert; int CanWrite; int Close; int Write; } ;
typedef int SexyAL_format ;
typedef TYPE_1__ SexyAL_device ;
typedef int SexyAL_buffering ;
typedef int SexyAL ;


 int CanWrite ;
 int Close ;
 int SetConvert ;
 TYPE_1__* SexyALI_DSound_Open (int ,int *,int *) ;
 TYPE_1__* SexyALI_OSS_Open (int ,int *,int *) ;
 int Write ;

__attribute__((used)) static SexyAL_device *Open(SexyAL *iface, uint64_t id, SexyAL_format *format, SexyAL_buffering *buffering)
{
 SexyAL_device *ret;




 if(!(ret=SexyALI_OSS_Open(id,format,buffering))) return(0);


 ret->Write=Write;
 ret->Close=Close;
 ret->CanWrite=CanWrite;
 ret->SetConvert=SetConvert;
 return(ret);
}
