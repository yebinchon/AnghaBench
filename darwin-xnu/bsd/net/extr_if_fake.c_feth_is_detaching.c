
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* if_fake_ref ;
typedef int boolean_t ;
struct TYPE_3__ {int iff_flags; } ;


 int IFF_FLAGS_DETACHING ;

__attribute__((used)) static inline boolean_t
feth_is_detaching(if_fake_ref fakeif)
{
 return ((fakeif->iff_flags & IFF_FLAGS_DETACHING) != 0);
}
