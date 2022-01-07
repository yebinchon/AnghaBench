
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Package ;


 int * current_package ;

void leave_package(Package *old_package) {
    current_package = old_package;
}
