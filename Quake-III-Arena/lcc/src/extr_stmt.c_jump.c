
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__* Symbol ;
typedef int * Node ;


 scalar_t__ ADDRG ;
 scalar_t__ JUMP ;
 scalar_t__ V ;
 TYPE_1__* findlabel (int) ;
 int * newnode (scalar_t__,int *,int *,TYPE_1__*) ;
 scalar_t__ ttob (int ) ;
 int voidptype ;

Node jump(int lab) {
 Symbol p = findlabel(lab);

 p->ref++;
 return newnode(JUMP+V, newnode(ADDRG+ttob(voidptype), ((void*)0), ((void*)0), p),
  ((void*)0), ((void*)0));
}
