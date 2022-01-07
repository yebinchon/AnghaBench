
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Push ;
 int method (int ,int ,void (*) (int ,int ),int ) ;

void pop_at(var self, var i) { method(self, Push, pop_at, i); }
