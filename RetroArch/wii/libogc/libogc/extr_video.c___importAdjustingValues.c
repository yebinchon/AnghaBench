
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ display_offsetH; } ;
typedef TYPE_1__ syssram ;
typedef scalar_t__ s8 ;


 scalar_t__ CONF_GetDisplayOffsetH (scalar_t__*) ;
 TYPE_1__* __SYS_LockSram () ;
 int __SYS_UnlockSram (int ) ;
 scalar_t__ displayOffsetH ;
 scalar_t__ displayOffsetV ;

__attribute__((used)) static inline void __importAdjustingValues()
{







 s8 offset;
 if ( CONF_GetDisplayOffsetH(&offset) == 0 ) {
  displayOffsetH = offset;
 } else {
  displayOffsetH = 0;
 }

 displayOffsetV = 0;
}
