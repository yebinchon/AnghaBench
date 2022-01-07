
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Int ;
 int look_from (int ,int ,int ) ;
 int new (int ) ;

var convert_to_int(var x) {
  var y = new(Int);
  look_from(y, x, 0);
  return y;
}
