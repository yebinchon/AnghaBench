
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* dtst_str; int dtst_refcount; } ;
typedef TYPE_1__ dtrace_string_t ;


 int ASSERT (int) ;
 TYPE_1__** DTRACE_HASHNEXT (int ,TYPE_1__*) ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int UINT32_MAX ;
 int dtrace_hash_add (int ,TYPE_1__*) ;
 TYPE_1__* dtrace_hash_lookup_string (int ,char const*) ;
 int dtrace_lock ;
 int dtrace_strings ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static char *
dtrace_strref(const char *str)
{
 dtrace_string_t *s = ((void*)0);
 size_t bufsize = (str != ((void*)0) ? strlen(str) : 0) + 1;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if (str == ((void*)0))
  str = "";

 for (s = dtrace_hash_lookup_string(dtrace_strings, str); s != ((void*)0);
      s = *(DTRACE_HASHNEXT(dtrace_strings, s))) {
  if (strncmp(str, s->dtst_str, bufsize) != 0) {
   continue;
  }
  ASSERT(s->dtst_refcount != UINT32_MAX);
  s->dtst_refcount++;
  return s->dtst_str;
 }

 s = kmem_zalloc(sizeof(dtrace_string_t) + bufsize, KM_SLEEP);
 s->dtst_refcount = 1;
 (void) strlcpy(s->dtst_str, str, bufsize);

 dtrace_hash_add(dtrace_strings, s);

 return s->dtst_str;
}
