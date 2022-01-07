
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ encoding_ignored; int current_gamma; int current_encoding; } ;
typedef TYPE_1__ png_modifier ;


 size_t safecat (char*,size_t,size_t,char*) ;
 size_t safecat_color_encoding (char*,size_t,size_t,int ,int ) ;

__attribute__((used)) static size_t
safecat_current_encoding(char *buffer, size_t bufsize, size_t pos,
   const png_modifier *pm)
{
   pos = safecat_color_encoding(buffer, bufsize, pos, pm->current_encoding,
      pm->current_gamma);

   if (pm->encoding_ignored)
      pos = safecat(buffer, bufsize, pos, "[overridden]");

   return pos;
}
