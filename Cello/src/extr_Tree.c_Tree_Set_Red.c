
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
struct Tree {int dummy; } ;


 int Tree_Set_Color (struct Tree*,int ,int) ;

__attribute__((used)) static void Tree_Set_Red(struct Tree* m, var node) {
  Tree_Set_Color(m, node, 1);
}
