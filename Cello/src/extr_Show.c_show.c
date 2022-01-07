
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int $ (int ,int ) ;
 int File ;
 int show_to (int ,int ,int ) ;
 int stdout ;

int show(var self) {
  return show_to(self, $(File, stdout), 0);
}
