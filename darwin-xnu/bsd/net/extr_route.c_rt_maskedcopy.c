
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {char* sa_data; int sa_len; int sa_family; } ;


 int MIN (int,int) ;
 int memset (char*,int ,size_t) ;

__attribute__((used)) static void
rt_maskedcopy(const struct sockaddr *src, struct sockaddr *dst,
    const struct sockaddr *netmask)
{
 const char *netmaskp = &netmask->sa_data[0];
 const char *srcp = &src->sa_data[0];
 char *dstp = &dst->sa_data[0];
 const char *maskend = (char *)dst
        + MIN(netmask->sa_len, src->sa_len);
 const char *srcend = (char *)dst + src->sa_len;

 dst->sa_len = src->sa_len;
 dst->sa_family = src->sa_family;

 while (dstp < maskend)
  *dstp++ = *srcp++ & *netmaskp++;
 if (dstp < srcend)
  memset(dstp, 0, (size_t)(srcend - dstp));
}
