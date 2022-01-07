
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int topdelta; int length; } ;
typedef TYPE_1__ column_t ;
typedef int byte ;


 int memcpy (int *,int *,int) ;

void
R_DrawColumnInCache
( column_t* patch,
  byte* cache,
  int originy,
  int cacheheight )
{
    int count;
    int position;
    byte* source;
    byte* dest;

    dest = (byte *)cache + 3;

    while (patch->topdelta != 0xff)
    {
 source = (byte *)patch + 3;
 count = patch->length;
 position = originy + patch->topdelta;

 if (position < 0)
 {
     count += position;
     position = 0;
 }

 if (position + count > cacheheight)
     count = cacheheight - position;

 if (count > 0)
     memcpy (cache + position, source, count);

 patch = (column_t *)( (byte *)patch + patch->length + 4);
    }
}
