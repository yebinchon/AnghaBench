
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCOS_FUNCTION ;
 int brcmjpeg_lock ;
 int vcos_mutex_create (int *,int ) ;

__attribute__((used)) static void brcmjpeg_init_once(void)
{
   vcos_mutex_create(&brcmjpeg_lock, VCOS_FUNCTION);
}
