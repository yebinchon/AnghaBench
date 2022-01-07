
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynstring {int buf; } ;


 int dynstring_init (struct dynstring*) ;
 int free (int ) ;

__attribute__((used)) static void dynstring_free(struct dynstring *ds)
{
   free(ds->buf);
   dynstring_init(ds);
}
