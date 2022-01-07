
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynstring {int size; int buf; } ;


 int FDT_ERR_NOSPACE ;
 int dtoverlay_error (char*) ;
 int realloc (int ,int) ;

__attribute__((used)) static int dynstring_set_size(struct dynstring *ds, int size)
{
   if (size > ds->size)
   {
      size = (size * 5)/4;
      ds->buf = realloc(ds->buf, size);
      if (!ds->buf)
      {
         dtoverlay_error("  out of memory");
         return -FDT_ERR_NOSPACE;
      }
      ds->size = size;
   }
   return 0;
}
