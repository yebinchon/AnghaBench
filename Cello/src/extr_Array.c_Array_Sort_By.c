
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 scalar_t__ Array_Len (int ) ;
 int Array_Sort_Part (int ,int ,scalar_t__,int (*) (int ,int )) ;

__attribute__((used)) static void Array_Sort_By(var self, bool(*f)(var,var)) {
  Array_Sort_Part(self, 0, Array_Len(self)-1, f);
}
