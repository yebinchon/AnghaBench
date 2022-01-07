
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Table_Resize_More (int ) ;
 int Table_Set_Move (int ,int ,int ,int) ;

__attribute__((used)) static void Table_Set(var self, var key, var val) {
  Table_Set_Move(self, key, val, 0);
  Table_Resize_More(self);
}
