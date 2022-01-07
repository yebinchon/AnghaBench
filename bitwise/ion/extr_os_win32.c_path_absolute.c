
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH ;
 int _fullpath (char*,char*,int) ;
 int path_copy (char*,char*) ;

void path_absolute(char path[MAX_PATH]) {
    char rel_path[MAX_PATH];
    path_copy(rel_path, path);
    _fullpath(path, rel_path, MAX_PATH);
}
