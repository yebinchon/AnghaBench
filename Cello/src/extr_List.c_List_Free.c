
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct List {int dummy; } ;
struct Header {int dummy; } ;


 int free (char*) ;

__attribute__((used)) static void List_Free(struct List* l, var self) {
  free((char*)self - sizeof(struct Header) - 2 * sizeof(var));
}
