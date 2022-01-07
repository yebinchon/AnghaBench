
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cpx {int cpx_flags; int cpx_key_len; } ;


 int CLR (int ,int) ;
 int CPX_IV_AES_CTX_INITIALIZED ;
 int CPX_IV_AES_CTX_VFS ;
 scalar_t__ ISSET (int ,int) ;

void cpx_set_key_len(struct cpx *cpx, uint16_t key_len)
{
 cpx->cpx_key_len = key_len;

 if (ISSET(cpx->cpx_flags, CPX_IV_AES_CTX_VFS)) {






  CLR(cpx->cpx_flags, CPX_IV_AES_CTX_INITIALIZED | CPX_IV_AES_CTX_VFS);
 }
}
