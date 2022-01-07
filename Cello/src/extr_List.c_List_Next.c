
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct List {int dummy; } ;
struct Header {int dummy; } ;



__attribute__((used)) static var* List_Next(struct List* l, var self) {
  return (var*)((char*)self - sizeof(struct Header) - 1 * sizeof(var));
}
