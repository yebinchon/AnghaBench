
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y; scalar_t__ bottom; scalar_t__ top; scalar_t__ x; scalar_t__ right; scalar_t__ left; scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ menuaction_s ;


 scalar_t__ BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void Action_Init( menuaction_s *a )
{
 int len;


 if (a->generic.name)
  len = strlen(a->generic.name);
 else
  len = 0;


 a->generic.left = a->generic.x;
 a->generic.right = a->generic.x + len*BIGCHAR_WIDTH;
 a->generic.top = a->generic.y;
 a->generic.bottom = a->generic.y + BIGCHAR_HEIGHT;
}
