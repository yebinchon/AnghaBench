
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynstring {int len; int buf; } ;


 int dynstring_set_size (struct dynstring*,int) ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int dynstring_dup(struct dynstring *ds, const char *src, int len)
{
   int err = 0;

   if (!len)
      len = strlen(src);

   err = dynstring_set_size(ds, len + 1);
   if (!err)
   {
      memcpy(ds->buf, src, len + 1);
      ds->len = len;
   }

   return err;
}
