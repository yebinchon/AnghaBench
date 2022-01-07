
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int $ (int ,int ) ;
 int File ;
 int print_to_with (int ,int ,char const*,int ) ;
 int stdout ;

int print_with(const char* fmt, var args) {
  return print_to_with($(File, stdout), 0, fmt, args);
}
