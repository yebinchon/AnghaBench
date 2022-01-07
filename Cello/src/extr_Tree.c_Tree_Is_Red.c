
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
struct Tree {int dummy; } ;


 int Tree_Get_Color (struct Tree*,int ) ;

__attribute__((used)) static bool Tree_Is_Red(struct Tree* m, var node) {
  return Tree_Get_Color(m, node);
}
