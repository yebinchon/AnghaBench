
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynstring {int size; int buf; scalar_t__ len; } ;


 int FDT_ERR_NOSPACE ;
 int dtoverlay_error (char*) ;
 int malloc (int) ;

__attribute__((used)) static int dynstring_init_size(struct dynstring *ds, int initial_size)
{
   if (initial_size < 32)
      initial_size = 32;
   ds->size = initial_size;
   ds->len = 0;
   ds->buf = malloc(initial_size);
   if (!ds->buf)
   {
      dtoverlay_error("  out of memory");
      return -FDT_ERR_NOSPACE;
   }
   return 0;
}
