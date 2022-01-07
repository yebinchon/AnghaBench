
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tag; int cs; } ;
typedef TYPE_1__ CharsetTag ;


 scalar_t__ NOINFO ;
 int exclusiveset (int ,int ) ;

__attribute__((used)) static int exclusive (CharsetTag *c1, CharsetTag *c2) {
  if (c1->tag == NOINFO || c2->tag == NOINFO)
    return 0;
  else return exclusiveset(c1->cs, c2->cs);
}
