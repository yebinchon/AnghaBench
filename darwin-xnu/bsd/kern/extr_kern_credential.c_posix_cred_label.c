
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * posix_cred_t ;
typedef TYPE_1__* kauth_cred_t ;
struct TYPE_3__ {int cr_posix; } ;



void
posix_cred_label(kauth_cred_t cred, posix_cred_t pcred)
{
 cred->cr_posix = *pcred;
}
