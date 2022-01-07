
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef TYPE_1__* png_textp ;
typedef int png_infop ;
struct TYPE_7__ {char* file; char* test; int png_ptr; } ;
typedef TYPE_2__ display ;
struct TYPE_6__ {int compression; } ;


 size_t PNG_INFO_iTXt ;
 size_t PNG_INFO_tEXt ;
 size_t PNG_INFO_zTXt ;
 int display_exit (TYPE_2__*) ;
 int fprintf (int ,char*,char*,char*,int) ;
 size_t png_get_text (int ,int ,TYPE_1__**,int *) ;
 size_t png_get_valid (int ,int ,size_t) ;
 int stderr ;

__attribute__((used)) static png_uint_32
get_valid(display *d, png_infop info_ptr)
{
   png_uint_32 flags = png_get_valid(d->png_ptr, info_ptr, (png_uint_32)~0);


   {
      png_textp text;
      png_uint_32 ntext = png_get_text(d->png_ptr, info_ptr, &text, ((void*)0));

      while (ntext > 0) switch (text[--ntext].compression)
      {
         case -1:
            flags |= PNG_INFO_tEXt;
            break;
         case 0:
            flags |= PNG_INFO_zTXt;
            break;
         case 1:
         case 2:
            flags |= PNG_INFO_iTXt;
            break;
         default:
            fprintf(stderr, "%s(%s): unknown text compression %d\n", d->file,
               d->test, text[ntext].compression);
            display_exit(d);
      }
   }

   return flags;
}
