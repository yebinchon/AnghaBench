
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf_t ;
typedef int boolean_t ;


 int buf_create_shadow_internal (int ,int ,uintptr_t,void (*) (int ,void*),void*,int) ;

buf_t
buf_create_shadow_priv(buf_t bp, boolean_t force_copy, uintptr_t external_storage, void (*iodone)(buf_t, void *), void *arg)
{
 return (buf_create_shadow_internal(bp, force_copy, external_storage, iodone, arg, 1));
}
