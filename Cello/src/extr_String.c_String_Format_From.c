
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct String* var ;
typedef int va_list ;
struct String {scalar_t__ val; } ;


 int vsscanf (scalar_t__,char const*,int ) ;

__attribute__((used)) static int String_Format_From(var self, int pos, const char* fmt, va_list va) {
  struct String* s = self;
  return vsscanf(s->val + pos, fmt, va);
}
