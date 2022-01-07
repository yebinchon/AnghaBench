
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_wcred; int b_rcred; } ;


 scalar_t__ IS_VALID_CRED (int ) ;
 int kauth_cred_unref (int *) ;

__attribute__((used)) static __inline__ void
buf_release_credentials(buf_t bp)
{
 if (IS_VALID_CRED(bp->b_rcred)) {
  kauth_cred_unref(&bp->b_rcred);
 }
 if (IS_VALID_CRED(bp->b_wcred)) {
  kauth_cred_unref(&bp->b_wcred);
 }
}
