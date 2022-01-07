
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uc_to_mb_fallback_locals {scalar_t__ l_errno; size_t l_outbytesleft; size_t l_outbuf; } ;


 scalar_t__ E2BIG ;
 int memcpy (size_t,char const*,size_t) ;

__attribute__((used)) static void uc_to_mb_write_replacement (const char *buf, size_t buflen,
                                        void* callback_arg)
{
  struct uc_to_mb_fallback_locals * plocals =
    (struct uc_to_mb_fallback_locals *) callback_arg;

  if (plocals->l_errno == 0) {

    if (plocals->l_outbytesleft < buflen)
      plocals->l_errno = E2BIG;
    else {
      memcpy(plocals->l_outbuf, buf, buflen);
      plocals->l_outbuf += buflen;
      plocals->l_outbytesleft -= buflen;
    }
  }
}
