
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* clearStatus ) () ;} ;
typedef TYPE_1__ DISC_INTERFACE ;


 int stub1 () ;

__attribute__((used)) static inline bool _FAT_disc_clearStatus (const DISC_INTERFACE* disc) {
 return disc->clearStatus();
}
