
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct String* var ;
struct String {char* val; } ;



__attribute__((used)) static char* String_C_Str(var self) {
  struct String* s = self;
  return s->val;
}
