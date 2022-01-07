
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ plctrace_enabled ;

void plctrace_disable(void) {
 plctrace_enabled = 0;
}
