
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_certificate {int key_usage; int extensions_present; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_BITSTRING ;
 int MSG_DEBUG ;
 int X509_EXT_KEY_USAGE ;
 int asn1_bit_string_to_long (int ,int) ;
 scalar_t__ asn1_get_next (int const*,size_t,struct asn1_hdr*) ;
 int wpa_printf (int ,char*,scalar_t__,...) ;

__attribute__((used)) static int x509_parse_ext_key_usage(struct x509_certificate *cert,
        const u8 *pos, size_t len)
{
 struct asn1_hdr hdr;
 if (asn1_get_next(pos, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_BITSTRING ||
     hdr.length < 1) {
  wpa_printf(MSG_DEBUG, "X509: Expected BIT STRING in "
      "KeyUsage; found %d tag 0x%x len %d",
      hdr.class, hdr.tag, hdr.length);
  return -1;
 }

 cert->extensions_present |= X509_EXT_KEY_USAGE;
 cert->key_usage = asn1_bit_string_to_long(hdr.payload, hdr.length);

 wpa_printf(MSG_DEBUG, "X509: KeyUsage 0x%lx", cert->key_usage);

 return 0;
}
