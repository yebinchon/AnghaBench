
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
struct upl {int dummy; } ;



vm_size_t
upl_get_internal_pagelist_offset(void)
{
 return sizeof(struct upl);
}
