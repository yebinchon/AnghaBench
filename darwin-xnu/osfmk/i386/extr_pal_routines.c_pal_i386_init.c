
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pal_efi_lock ;
 int simple_lock_init (int *,int ) ;

void
pal_i386_init(void)
{
    simple_lock_init(&pal_efi_lock, 0);
}
