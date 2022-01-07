
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct asn1_oid {scalar_t__ len; unsigned long* oid; } ;


 scalar_t__ ASN1_MAX_OID_LEN ;
 int MSG_DEBUG ;
 int os_memset (struct asn1_oid*,int ,int) ;
 int wpa_printf (int ,char*) ;

int asn1_parse_oid(const u8 *buf, size_t len, struct asn1_oid *oid)
{
 const u8 *pos, *end;
 unsigned long val;
 u8 tmp;

 os_memset(oid, 0, sizeof(*oid));

 pos = buf;
 end = buf + len;

 while (pos < end) {
  val = 0;

  do {
   if (pos >= end)
    return -1;
   tmp = *pos++;
   val = (val << 7) | (tmp & 0x7f);
  } while (tmp & 0x80);

  if (oid->len >= ASN1_MAX_OID_LEN) {
   wpa_printf(MSG_DEBUG, "ASN.1: Too long OID value");
   return -1;
  }
  if (oid->len == 0) {





   oid->oid[0] = val / 40;
   if (oid->oid[0] > 2)
    oid->oid[0] = 2;
   oid->oid[1] = val - oid->oid[0] * 40;
   oid->len = 2;
  } else
   oid->oid[oid->len++] = val;
 }

 return 0;
}
