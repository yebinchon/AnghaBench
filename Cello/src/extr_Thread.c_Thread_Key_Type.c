
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {int tls; } ;


 struct Thread* key_type (int ) ;

__attribute__((used)) static var Thread_Key_Type(var self) {
  struct Thread* t = self;
  return key_type(t->tls);
}
