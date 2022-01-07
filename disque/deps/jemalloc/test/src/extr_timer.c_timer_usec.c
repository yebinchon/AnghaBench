
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_14__ {int tv_sec; int tv_usec; } ;
struct TYPE_13__ {int tv_sec; int tv_usec; } ;
struct TYPE_12__ {int tv_sec; int tv_nsec; } ;
struct TYPE_11__ {int tv_sec; int tv_nsec; } ;
struct TYPE_10__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
struct TYPE_9__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
struct TYPE_15__ {TYPE_6__ tv0; TYPE_5__ tv1; TYPE_4__ ts0; TYPE_3__ ts1; TYPE_2__ ft1; TYPE_1__ ft0; } ;
typedef TYPE_7__ timedelta_t ;



uint64_t
timer_usec(const timedelta_t *timer)
{
 return (((timer->tv1.tv_sec - timer->tv0.tv_sec) * 1000000) +
     timer->tv1.tv_usec - timer->tv0.tv_usec);

}
