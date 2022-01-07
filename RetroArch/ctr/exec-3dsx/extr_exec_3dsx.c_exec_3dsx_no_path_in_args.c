
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_3dsx_actual (char const*,char const**,int) ;

int exec_3dsx_no_path_in_args(const char* path, const char** args){
 return exec_3dsx_actual(path, args, 0 );
}
