
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_texobj {scalar_t__ usr_data; } ;
typedef int GXTexObj ;



void* GX_GetTexObjUserData(GXTexObj *obj)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;
 return (void*)ptr->usr_data;
}
