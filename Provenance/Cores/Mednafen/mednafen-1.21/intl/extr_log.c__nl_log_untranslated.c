
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __libc_lock_lock (int ) ;
 int __libc_lock_unlock (int ) ;
 int _nl_log_untranslated_locked (char const*,char const*,char const*,char const*,int) ;
 int lock ;

void
_nl_log_untranslated (const char *logfilename, const char *domainname,
                      const char *msgid1, const char *msgid2, int plural)
{
  __libc_lock_lock (lock);
  _nl_log_untranslated_locked (logfilename, domainname, msgid1, msgid2, plural);
  __libc_lock_unlock (lock);
}
