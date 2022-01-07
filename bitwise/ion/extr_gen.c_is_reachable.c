
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REACHABLE_NATURAL ;
 scalar_t__ flag_fullgen ;

bool is_reachable(int reachable) {
    return flag_fullgen || reachable == REACHABLE_NATURAL;
}
