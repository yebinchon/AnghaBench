
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcos_verify_bkpts ;

int vcos_verify_bkpts_enable(int enable)
{
   int old = vcos_verify_bkpts;
   vcos_verify_bkpts = enable;
   return old;
}
