
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int $ (int ,int ) ;
 int File ;
 int scan_from_with (int ,int ,char const*,int ) ;
 int stdin ;

int scan_with(const char* fmt, var args) {
  return scan_from_with($(File, stdin), 0, fmt, args);
}
