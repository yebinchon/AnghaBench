
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct __gx_texobj {scalar_t__ usr_data; } ;
typedef int GXTexObj ;



void GX_InitTexObjUserData(GXTexObj *obj,void *userdata)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;
 ptr->usr_data = (u32)userdata;
}
