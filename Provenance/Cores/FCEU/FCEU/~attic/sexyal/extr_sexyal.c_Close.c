
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SexyAL_device ;


 int SexyALI_DSound_Close (int *) ;
 int SexyALI_OSS_Close (int *) ;

__attribute__((used)) static int Close(SexyAL_device *device)
{



 return(SexyALI_OSS_Close(device));

}
