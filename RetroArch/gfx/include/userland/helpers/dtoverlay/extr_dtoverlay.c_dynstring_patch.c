
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynstring {int len; scalar_t__ buf; } ;


 int dynstring_set_size (struct dynstring*,int) ;
 int memcpy (scalar_t__,char const*,int) ;
 int memmove (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int dynstring_patch(struct dynstring *ds, int pos, int width,
                           const char *src, int len)
{
   int newlen = ds->len + (len - width);
   int err = dynstring_set_size(ds, newlen + 1);
   if (!err)
   {
      if (width != len)
      {

         memmove(ds->buf + pos + len, ds->buf + pos + width,
                 ds->len + 1 - (pos + width));
         ds->len = newlen;
      }
      memcpy(ds->buf + pos, src, len);
   }
   return err;
}
