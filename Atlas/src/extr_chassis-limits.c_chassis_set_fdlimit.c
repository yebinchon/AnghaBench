
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chassis_fdlimit_set (int) ;

int chassis_set_fdlimit(int max_files_number) {
 return chassis_fdlimit_set(max_files_number);
}
