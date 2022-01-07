
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct String* var ;
struct String {int val; } ;


 size_t strlen (int ) ;

__attribute__((used)) static size_t String_Len(var self) {
  struct String* s = self;
  return strlen(s->val);
}
