
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int ValueError ;
 int throw (int ,char*) ;

__attribute__((used)) static var Type_Copy(var self) {
  return throw(ValueError, "Type objects cannot be copied.");
}
