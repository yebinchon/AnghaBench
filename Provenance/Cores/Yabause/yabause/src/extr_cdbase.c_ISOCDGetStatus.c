
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ session_num; } ;


 TYPE_1__ disc ;

__attribute__((used)) static int ISOCDGetStatus(void) {
   return disc.session_num > 0 ? 0 : 2;
}
