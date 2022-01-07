
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* wait ) () ;} ;


 TYPE_1__ sndout_current ;
 int stub1 () ;

__attribute__((used)) static inline void sndout_wait(void)
{
 sndout_current.wait();
}
