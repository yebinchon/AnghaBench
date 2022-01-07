
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** kids; } ;
typedef TYPE_1__* Node ;


 int gen02 (TYPE_1__*) ;

__attribute__((used)) static void gen01(Node p) {
 if (p) {
  gen01(p->kids[0]);
  gen01(p->kids[1]);
  gen02(p);
 }
}
