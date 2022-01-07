
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_dl {int sdl_alen; scalar_t__ sdl_data; } ;


 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static const char *
sdl_addr_to_hex(const struct sockaddr_dl *sdl, char *orig_buf, int buflen)
{
 char *buf = orig_buf;
 int i;
 const u_char *lladdr = (u_char *)(size_t)sdl->sdl_data;
 int maxbytes = buflen / 3;

 if (maxbytes > sdl->sdl_alen) {
  maxbytes = sdl->sdl_alen;
 }
 *buf = '\0';
 for (i = 0; i < maxbytes; i++) {
  snprintf(buf, 3, "%02x", lladdr[i]);
  buf += 2;
  *buf = (i == maxbytes - 1) ? '\0' : ':';
  buf++;
 }
 return (orig_buf);
}
