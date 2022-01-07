
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
struct TYPE_3__ {char const* name; char const* filename; int ticks; int cycles; int usec; int line; } ;
typedef TYPE_1__ chassis_timestamp_t ;


 int my_timer_cycles () ;
 int my_timer_microseconds () ;
 int my_timer_ticks () ;

void chassis_timestamp_init_now(chassis_timestamp_t *ts,
  const char *name,
  const char *filename,
  gint line) {

 ts->name = name;
 ts->filename = filename;
 ts->line = line;
 ts->usec = my_timer_microseconds();
 ts->cycles = my_timer_cycles();
 ts->ticks = my_timer_ticks();
}
