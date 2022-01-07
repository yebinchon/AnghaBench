
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_cc; scalar_t__ sb_mbcnt; int * sb_lastrecord; int * sb_mbtail; int * sb_mb; int sb_so; } ;


 int panic (char*,char const*,struct sockbuf*,int ,scalar_t__,scalar_t__,int *,int *,int *) ;

void
sb_empty_assert(struct sockbuf *sb, const char *where)
{
 if (!(sb->sb_cc == 0 && sb->sb_mb == ((void*)0) && sb->sb_mbcnt == 0 &&
     sb->sb_mbtail == ((void*)0) && sb->sb_lastrecord == ((void*)0))) {
  panic("%s: sb %p so %p cc %d mbcnt %d mb %p mbtail %p "
      "lastrecord %p\n", where, sb, sb->sb_so, sb->sb_cc,
      sb->sb_mbcnt, sb->sb_mb, sb->sb_mbtail,
      sb->sb_lastrecord);

 }
}
