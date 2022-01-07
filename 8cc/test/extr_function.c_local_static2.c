
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int local_static2() {
    static int x = 1;
    static char y[] = "2";
    static int z;
    z = 3;
    return x++ + (y[0] - '0') + z;
}
