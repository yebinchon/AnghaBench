
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dtst_refcount; int dtst_str; } ;
typedef TYPE_1__ dtrace_string_t ;


 int ASSERT (int) ;
 TYPE_1__** DTRACE_HASHNEXT (int ,TYPE_1__*) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 TYPE_1__* dtrace_hash_lookup_string (int ,char const*) ;
 int dtrace_hash_remove (int ,TYPE_1__*) ;
 int dtrace_lock ;
 int dtrace_strings ;
 int kmem_free (TYPE_1__*,int) ;
 int panic (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

__attribute__((used)) static void
dtrace_strunref(const char *str)
{
 ASSERT(str != ((void*)0));
 dtrace_string_t *s = ((void*)0);
 size_t bufsize = strlen(str) + 1;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 for (s = dtrace_hash_lookup_string(dtrace_strings, str); s != ((void*)0);
      s = *(DTRACE_HASHNEXT(dtrace_strings, s))) {
  if (strncmp(str, s->dtst_str, bufsize) != 0) {
   continue;
  }
  ASSERT(s->dtst_refcount != 0);
  s->dtst_refcount--;
  if (s->dtst_refcount == 0) {
   dtrace_hash_remove(dtrace_strings, s);
   kmem_free(s, sizeof(dtrace_string_t) + bufsize);
  }
  return;
 }
 panic("attempt to unref non-existent string %s", str);
}
