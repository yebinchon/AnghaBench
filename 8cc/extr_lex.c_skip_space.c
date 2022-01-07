
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_skip_space () ;

__attribute__((used)) static bool skip_space() {
    if (!do_skip_space())
        return 0;
    while (do_skip_space());
    return 1;
}
