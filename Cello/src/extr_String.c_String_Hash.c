
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct String* var ;
typedef int uint64_t ;
struct String {int val; } ;


 int hash_data (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static uint64_t String_Hash(var self) {
  struct String* s = self;
  return hash_data(s->val, strlen(s->val));
}
