
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int $ (int ,int ) ;
 int File ;
 int print_to (int ,int,char*) ;
 int print_to_with (int ,int,char const*,int ) ;
 int stdout ;

int println_with(const char* fmt, var args) {
  int pos = 0;
  pos = print_to_with($(File, stdout), pos, fmt, args);
  pos = print_to($(File, stdout), pos, "\n");
  return pos;
}
