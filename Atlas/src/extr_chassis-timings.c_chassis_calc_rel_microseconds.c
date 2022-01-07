
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double guint64 ;
struct TYPE_2__ {double microseconds_frequency; } ;


 double MICROS_IN_SEC ;
 TYPE_1__* chassis_timestamps_global ;
 int g_assert (int ) ;
 int g_critical (char*) ;

guint64 chassis_calc_rel_microseconds(guint64 start, guint64 stop) {
 return stop - start;

}
