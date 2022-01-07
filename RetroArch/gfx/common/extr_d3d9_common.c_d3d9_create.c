
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* D3D9Create (int ) ;
 int d3d9_SDKVersion ;

void *d3d9_create(void)
{
   return D3D9Create(d3d9_SDKVersion);
}
