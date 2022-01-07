
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sockbuf {struct mbuf* sb_mb; struct mbuf* sb_lastrecord; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 scalar_t__ VM_KERNEL_ADDRPERM (struct mbuf*) ;
 int panic (char*,char const*) ;
 int printf (char*,...) ;

void
sblastrecordchk(struct sockbuf *sb, const char *where)
{
 struct mbuf *m = sb->sb_mb;

 while (m && m->m_nextpkt)
  m = m->m_nextpkt;

 if (m != sb->sb_lastrecord) {
  printf("sblastrecordchk: mb 0x%llx lastrecord 0x%llx "
      "last 0x%llx\n",
      (uint64_t)VM_KERNEL_ADDRPERM(sb->sb_mb),
      (uint64_t)VM_KERNEL_ADDRPERM(sb->sb_lastrecord),
      (uint64_t)VM_KERNEL_ADDRPERM(m));
  printf("packet chain:\n");
  for (m = sb->sb_mb; m != ((void*)0); m = m->m_nextpkt)
   printf("\t0x%llx\n", (uint64_t)VM_KERNEL_ADDRPERM(m));
  panic("sblastrecordchk from %s", where);
 }
}
