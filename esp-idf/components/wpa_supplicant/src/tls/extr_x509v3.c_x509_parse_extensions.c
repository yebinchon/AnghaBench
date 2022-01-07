
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_certificate {int dummy; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int * payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 scalar_t__ asn1_get_next (int const*,size_t,struct asn1_hdr*) ;
 int wpa_printf (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ x509_parse_extension (struct x509_certificate*,int const*,int,int const**) ;

__attribute__((used)) static int x509_parse_extensions(struct x509_certificate *cert,
     const u8 *pos, size_t len)
{
 const u8 *end;
 struct asn1_hdr hdr;



 if (asn1_get_next(pos, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: Unexpected ASN.1 data "
      "for Extensions: class %d tag 0x%x; "
      "expected SEQUENCE", hdr.class, hdr.tag);
  return -1;
 }

 pos = hdr.payload;
 end = pos + hdr.length;

 while (pos < end) {
  if (x509_parse_extension(cert, pos, end - pos, &pos)
      < 0)
   return -1;
 }

 return 0;
}
