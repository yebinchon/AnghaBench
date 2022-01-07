
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {int tls; } ;


 struct Thread* val_type (int ) ;

__attribute__((used)) static var Thread_Val_Type(var self) {
  struct Thread* t = self;
  return val_type(t->tls);
}
