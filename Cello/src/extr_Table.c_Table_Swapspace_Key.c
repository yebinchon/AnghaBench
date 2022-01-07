
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* var ;
typedef int uint64_t ;
struct Table {int dummy; } ;
struct Header {int dummy; } ;



__attribute__((used)) static var Table_Swapspace_Key(struct Table* t, var space) {
  return (char*)space + sizeof(uint64_t) + sizeof(struct Header);
}
