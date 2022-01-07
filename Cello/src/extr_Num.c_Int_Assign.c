
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Int* var ;
struct Int {int val; } ;


 int c_int (struct Int*) ;

__attribute__((used)) static void Int_Assign(var self, var obj) {
  struct Int* i = self;
  i->val = c_int(obj);
}
