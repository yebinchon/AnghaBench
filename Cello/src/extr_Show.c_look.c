
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int $ (int ,int ) ;
 int File ;
 int look_from (int ,int ,int ) ;
 int stdin ;

int look(var self) {
  return look_from(self, $(File, stdin), 0);
}
