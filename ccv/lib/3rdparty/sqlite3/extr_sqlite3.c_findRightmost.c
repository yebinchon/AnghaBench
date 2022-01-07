
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pNext; } ;
typedef TYPE_1__ Select ;



__attribute__((used)) static Select *findRightmost(Select *p){
  while( p->pNext ) p = p->pNext;
  return p;
}
