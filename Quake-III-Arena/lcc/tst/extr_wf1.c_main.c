
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct node {int dummy; } ;
struct TYPE_2__ {int count; } ;


 scalar_t__ getword (char*) ;
 TYPE_1__* lookup (char*,struct node**) ;
 scalar_t__ next ;
 int tprint (struct node*) ;

main() {
 struct node *root;
 char word[20];

 root = 0;
 next = 0;
 while (getword(word))
  lookup(word, &root)->count++;
 tprint(root);
 return 0;
}
