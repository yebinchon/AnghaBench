
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;


 scalar_t__ Box_Deref (scalar_t__) ;
 int Box_Ref (scalar_t__,int *) ;
 int del (scalar_t__) ;

__attribute__((used)) static void Box_Del(var self) {
  var obj = Box_Deref(self);
  if (obj) { del(obj); }
  Box_Ref(self, ((void*)0));
}
