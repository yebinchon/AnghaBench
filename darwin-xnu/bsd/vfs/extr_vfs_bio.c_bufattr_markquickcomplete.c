
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bufattr_t ;
struct TYPE_3__ {int ba_flags; } ;


 int BA_QUICK_COMPLETE ;
 int SET (int ,int ) ;

void
bufattr_markquickcomplete(bufattr_t bap) {
 SET(bap->ba_flags, BA_QUICK_COMPLETE);
}
