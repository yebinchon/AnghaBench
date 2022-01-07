
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int $ (int ,int ) ;
 int File ;
 int scan_from (int ,int,char*) ;
 int scan_from_with (int ,int,char const*,int ) ;
 int stdin ;

int scanln_with(const char* fmt, var args) {
  int pos = 0;
  pos = scan_from_with($(File, stdin), pos, fmt, args);
  pos = scan_from($(File, stdin), pos, "\n");
  return pos;
}
