
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
typedef int va_list ;


 int Format ;
 int format_to ;
 int method (int ,int ,int ,int,char const*,int ) ;

int format_to_va(var self, int pos, const char* fmt, va_list va) {
  return method(self, Format, format_to, pos, fmt, va);
}
