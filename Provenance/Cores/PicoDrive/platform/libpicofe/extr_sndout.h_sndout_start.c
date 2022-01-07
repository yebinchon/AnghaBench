
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* start ) (int,int) ;} ;


 TYPE_1__ sndout_current ;
 int stub1 (int,int) ;

__attribute__((used)) static inline int sndout_start(int rate, int stereo)
{
 return sndout_current.start(rate, stereo);
}
