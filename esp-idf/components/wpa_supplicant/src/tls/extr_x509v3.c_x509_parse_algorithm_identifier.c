
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_algorithm_identifier {int oid; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int * payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 scalar_t__ asn1_get_next (int const*,size_t,struct asn1_hdr*) ;
 scalar_t__ asn1_get_oid (int const*,int,int *,int const**) ;
 int wpa_printf (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int x509_parse_algorithm_identifier(
 const u8 *buf, size_t len,
 struct x509_algorithm_identifier *id, const u8 **next)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end;
 if (asn1_get_next(buf, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: Expected SEQUENCE "
      "(AlgorithmIdentifier) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 pos = hdr.payload;
 end = pos + hdr.length;

 if (end > buf + len)
  return -1;

 *next = end;

 if (asn1_get_oid(pos, end - pos, &id->oid, &pos))
  return -1;



 return 0;
}
