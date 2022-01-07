
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {size_t len; int * oid; } ;


 int os_snprintf (char*,int,char*,char*,int ) ;

void asn1_oid_to_str(struct asn1_oid *oid, char *buf, size_t len)
{
 char *pos = buf;
 size_t i;
 int ret;

 if (len == 0)
  return;

 buf[0] = '\0';

 for (i = 0; i < oid->len; i++) {
  ret = os_snprintf(pos, buf + len - pos,
      "%s%lu",
      i == 0 ? "" : ".", oid->oid[i]);
  if (ret < 0 || ret >= buf + len - pos)
   break;
  pos += ret;
 }
 buf[len - 1] = '\0';
}
