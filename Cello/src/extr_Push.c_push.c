
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Push ;
 int method (int ,int ,void (*) (int ,int ),int ) ;

void push(var self, var val) { method(self, Push, push, val); }
