
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int access_t ;


 int TYPE_FREE ;
 int TYPE_READ ;
 int TYPE_WRITE ;

__attribute__((used)) static const char *
access_str(access_t type)
{
 if (type & TYPE_READ) {
  return "load from";
 } else if (type & TYPE_WRITE) {
  return "store to";
 } else if (type & TYPE_FREE) {
  return "free of";
 } else {
  return "access of";
 }
}
