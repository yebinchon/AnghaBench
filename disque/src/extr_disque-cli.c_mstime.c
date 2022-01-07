
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ustime () ;

__attribute__((used)) static long long mstime(void) {
    return ustime()/1000;
}
