
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y; scalar_t__ bottom; scalar_t__ top; scalar_t__ x; scalar_t__ right; scalar_t__ left; scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ menuslider_s ;


 int SLIDER_RANGE ;
 scalar_t__ SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void Slider_Init( menuslider_s *s )
{
 int len;


 if (s->generic.name)
  len = strlen(s->generic.name);
 else
  len = 0;

 s->generic.left = s->generic.x - (len+1)*SMALLCHAR_WIDTH;
 s->generic.right = s->generic.x + (SLIDER_RANGE+2+1)*SMALLCHAR_WIDTH;
 s->generic.top = s->generic.y;
 s->generic.bottom = s->generic.y + SMALLCHAR_HEIGHT;
}
