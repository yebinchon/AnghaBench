
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_target_path ;
 int rmdir (int *) ;

void remove_target_directory() {
    rmdir(&g_target_path[0]);
}
