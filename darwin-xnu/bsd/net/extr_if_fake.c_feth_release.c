
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* if_fake_ref ;
struct TYPE_4__ {int iff_retain_count; } ;


 int OSDecrementAtomic (int *) ;
 int assert (int) ;
 int feth_free (TYPE_1__*) ;

__attribute__((used)) static void
feth_release(if_fake_ref fakeif)
{
 u_int32_t old_retain_count;

 old_retain_count = OSDecrementAtomic(&fakeif->iff_retain_count);
 switch (old_retain_count) {
 case 0:
  assert(old_retain_count != 0);
  break;
 case 1:
  feth_free(fakeif);
  break;
 default:
  break;
 }
 return;
}
