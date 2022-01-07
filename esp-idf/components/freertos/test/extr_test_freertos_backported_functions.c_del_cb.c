
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TLSP_DEL_BASE ;

__attribute__((used)) static void del_cb(int index, void *ptr)
{
    *((uint32_t *)ptr) = (TLSP_DEL_BASE << index);
}
