
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
typedef int va_list ;


 int Format ;
 int format_from ;
 int method (int ,int ,int ,int,char const*,int ) ;

int format_from_va(var self, int pos, const char* fmt, va_list va) {
  return method(self, Format, format_from, pos, fmt, va);
}
