
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dh; } ;
typedef int SSL ;
typedef int DH ;


 TYPE_1__* dh_param ;

DH *TmpDhCallback(SSL *ssl, int is_export, int keylength)
{
 DH *ret = ((void*)0);

 if (dh_param != ((void*)0))
 {
  ret = dh_param->dh;
 }

 return ret;
}
