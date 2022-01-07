
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Thread* var ;
struct Thread {int tls; } ;


 struct Thread* deref (int ) ;
 int get (int ,struct Thread*) ;

__attribute__((used)) static var Thread_Get(var self, var key) {
  struct Thread* t = self;
  return deref(get(t->tls, key));
}
