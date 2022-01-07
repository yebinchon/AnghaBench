
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; int appended; } ;
struct known_translation_t {int category; int encoding; int localename; int domainname; TYPE_1__ msgid; int * domain; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
transcmp (const void *p1, const void *p2)
{
  const struct known_translation_t *s1;
  const struct known_translation_t *s2;
  int result;

  s1 = (const struct known_translation_t *) p1;
  s2 = (const struct known_translation_t *) p2;

  result = strcmp (s1->domain != ((void*)0) ? s1->msgid.appended : s1->msgid.ptr,
     s2->domain != ((void*)0) ? s2->msgid.appended : s2->msgid.ptr);
  if (result == 0)
    {
      result = strcmp (s1->domainname, s2->domainname);
      if (result == 0)
 {




     {







  result = s1->category - s2->category;
     }
 }
    }

  return result;
}
