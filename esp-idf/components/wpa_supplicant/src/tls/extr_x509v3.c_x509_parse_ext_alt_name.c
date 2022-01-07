
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_name {int dummy; } ;
struct asn1_hdr {int length; scalar_t__ class; int tag; int * payload; } ;


 scalar_t__ ASN1_CLASS_CONTEXT_SPECIFIC ;
 int MSG_DEBUG ;
 scalar_t__ asn1_get_next (int const*,int,struct asn1_hdr*) ;
 int wpa_printf (int ,char*) ;
 int x509_parse_alt_name_dns (struct x509_name*,int *,int) ;
 int x509_parse_alt_name_ip (struct x509_name*,int *,int) ;
 int x509_parse_alt_name_rfc8222 (struct x509_name*,int *,int) ;
 int x509_parse_alt_name_rid (struct x509_name*,int *,int) ;
 int x509_parse_alt_name_uri (struct x509_name*,int *,int) ;

__attribute__((used)) static int x509_parse_ext_alt_name(struct x509_name *name,
       const u8 *pos, size_t len)
{
 struct asn1_hdr hdr;
 const u8 *p, *end;
 for (p = pos, end = pos + len; p < end; p = hdr.payload + hdr.length) {
  int res;

  if (asn1_get_next(p, end - p, &hdr) < 0) {
   wpa_printf(MSG_DEBUG, "X509: Failed to parse "
       "SubjectAltName item");
   return -1;
  }

  if (hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC)
   continue;

  switch (hdr.tag) {
  case 1:
   res = x509_parse_alt_name_rfc8222(name, hdr.payload,
         hdr.length);
   break;
  case 2:
   res = x509_parse_alt_name_dns(name, hdr.payload,
            hdr.length);
   break;
  case 6:
   res = x509_parse_alt_name_uri(name, hdr.payload,
            hdr.length);
   break;
  case 7:
   res = x509_parse_alt_name_ip(name, hdr.payload,
           hdr.length);
   break;
  case 8:
   res = x509_parse_alt_name_rid(name, hdr.payload,
            hdr.length);
   break;
  case 0:
  case 3:
  case 4:
  case 5:
  default:
   res = 0;
   break;
  }
  if (res < 0)
   return res;
 }

 return 0;
}
