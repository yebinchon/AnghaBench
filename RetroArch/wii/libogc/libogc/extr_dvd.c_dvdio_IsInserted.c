
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DVD_LowGetStatus (int *,int *) ;
 scalar_t__ DVD_STATUS (int ) ;
 scalar_t__ DVD_STATUS_READY ;

__attribute__((used)) static bool dvdio_IsInserted()
{
 u32 status = 0;
 DVD_LowGetStatus(&status, ((void*)0));

 if(DVD_STATUS(status) == DVD_STATUS_READY)
  return 1;

 return 0;
}
