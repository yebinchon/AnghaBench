
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* D3DCreate (int ) ;
 int SDKVersion ;

void *d3d8_create(void)
{
   return D3DCreate(SDKVersion);
}
