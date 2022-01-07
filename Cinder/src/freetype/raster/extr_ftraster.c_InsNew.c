
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ X; struct TYPE_5__* link; } ;
typedef TYPE_1__** PProfileList ;
typedef TYPE_1__* PProfile ;
typedef scalar_t__ Long ;



__attribute__((used)) static void
  InsNew( PProfileList list,
          PProfile profile )
  {
    PProfile *old, current;
    Long x;


    old = list;
    current = *old;
    x = profile->X;

    while ( current )
    {
      if ( x < current->X )
        break;
      old = &current->link;
      current = *old;
    }

    profile->link = current;
    *old = profile;
  }
