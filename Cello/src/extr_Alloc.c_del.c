
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int ALLOC_STANDARD ;
 int del_by (int ,int ) ;

void del(var self) { del_by(self, ALLOC_STANDARD); }
