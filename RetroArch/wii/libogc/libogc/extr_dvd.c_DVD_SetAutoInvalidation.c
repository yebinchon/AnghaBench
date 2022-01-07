
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __dvd_autoinvalidation ;

u32 DVD_SetAutoInvalidation(u32 auto_inv)
{
 u32 ret = __dvd_autoinvalidation;
 __dvd_autoinvalidation= auto_inv;
 return ret;
}
