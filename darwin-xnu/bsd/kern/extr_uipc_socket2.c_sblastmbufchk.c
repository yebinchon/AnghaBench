
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sockbuf {struct mbuf* sb_mb; struct mbuf* sb_mbtail; } ;
struct mbuf {struct mbuf* m_next; struct mbuf* m_nextpkt; } ;


 scalar_t__ VM_KERNEL_ADDRPERM (struct mbuf*) ;
 int panic (char*,char const*) ;
 int printf (char*,...) ;

void
sblastmbufchk(struct sockbuf *sb, const char *where)
{
 struct mbuf *m = sb->sb_mb;
 struct mbuf *n;

 while (m && m->m_nextpkt)
  m = m->m_nextpkt;

 while (m && m->m_next)
  m = m->m_next;

 if (m != sb->sb_mbtail) {
  printf("sblastmbufchk: mb 0x%llx mbtail 0x%llx last 0x%llx\n",
      (uint64_t)VM_KERNEL_ADDRPERM(sb->sb_mb),
      (uint64_t)VM_KERNEL_ADDRPERM(sb->sb_mbtail),
      (uint64_t)VM_KERNEL_ADDRPERM(m));
  printf("packet tree:\n");
  for (m = sb->sb_mb; m != ((void*)0); m = m->m_nextpkt) {
   printf("\t");
   for (n = m; n != ((void*)0); n = n->m_next)
    printf("0x%llx ",
        (uint64_t)VM_KERNEL_ADDRPERM(n));
   printf("\n");
  }
  panic("sblastmbufchk from %s", where);
 }
}
