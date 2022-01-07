
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int aes; } ;
typedef TYPE_1__ X86Features ;
struct TYPE_9__ {int aes; } ;
struct TYPE_12__ {TYPE_3__ features; } ;
struct TYPE_8__ {int aes; } ;
struct TYPE_11__ {TYPE_2__ features; } ;
struct TYPE_10__ {TYPE_1__ features; } ;
typedef TYPE_2__ ArmFeatures ;
typedef TYPE_3__ Aarch64Features ;


 TYPE_6__ GetAarch64Info () ;
 TYPE_5__ GetArmInfo () ;
 TYPE_4__ GetX86Info () ;
 int __cpuid (int*,int) ;

bool IsAesNiSupported()
{
 bool supported = 0;
 return supported;
}
