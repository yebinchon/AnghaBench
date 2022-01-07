
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct Curl_tree {struct Curl_tree* smaller; struct Curl_tree* samen; TYPE_1__ key; struct Curl_tree* larger; } ;


 int printf (char*,...) ;

__attribute__((used)) static void splayprint(struct Curl_tree * t, int d, char output)
{
  struct Curl_tree *node;
  int i;
  int count;
  if(t == ((void*)0))
    return;

  splayprint(t->larger, d + 1, output);
  for(i = 0; i<d; i++)
    if(output)
      printf("  ");

  if(output) {
    printf("%ld.%ld[%d]", (long)t->key.tv_sec,
           (long)t->key.tv_usec, i);
  }

  for(count = 0, node = t->samen; node != t; node = node->samen, count++)
    ;

  if(output) {
    if(count)
      printf(" [%d more]\n", count);
    else
      printf("\n");
  }

  splayprint(t->smaller, d + 1, output);
}
