
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_private_key {int dummy; } ;
struct bignum {int dummy; } ;
struct asn1_oid {int len; int* oid; } ;
struct asn1_hdr {scalar_t__ tag; int length; int * payload; int class; } ;
typedef int obuf ;


 int ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_INTEGER ;
 scalar_t__ ASN1_TAG_OCTETSTRING ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 scalar_t__ asn1_get_next (int const*,int,struct asn1_hdr*) ;
 scalar_t__ asn1_get_oid (int *,int,struct asn1_oid*,int const**) ;
 int asn1_oid_to_str (struct asn1_oid*,char*,int) ;
 scalar_t__ bignum_cmp_d (struct bignum*,int ) ;
 int bignum_deinit (struct bignum*) ;
 struct bignum* bignum_init () ;
 scalar_t__ bignum_set_unsigned_bin (struct bignum*,int *,int) ;
 scalar_t__ crypto_rsa_import_private_key (int *,int) ;
 int wpa_printf (int ,char*,...) ;

struct crypto_private_key * pkcs8_key_import(const u8 *buf, size_t len)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end;
 struct bignum *zero;
 struct asn1_oid oid;
 char obuf[80];




 if (asn1_get_next(buf, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Does not start with PKCS #8 "
      "header (SEQUENCE); assume PKCS #8 not used");
  return ((void*)0);
 }
 pos = hdr.payload;
 end = pos + hdr.length;


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL || hdr.tag != ASN1_TAG_INTEGER) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Expected INTEGER - found "
      "class %d tag 0x%x; assume PKCS #8 not used",
      hdr.class, hdr.tag);
  return ((void*)0);
 }

 zero = bignum_init();
 if (zero == ((void*)0))
  return ((void*)0);

 if (bignum_set_unsigned_bin(zero, hdr.payload, hdr.length) < 0) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Failed to parse INTEGER");
  bignum_deinit(zero);
  return ((void*)0);
 }
 pos = hdr.payload + hdr.length;

 if (bignum_cmp_d(zero, 0) != 0) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Expected zero INTEGER in the "
      "beginning of private key; not found; assume "
      "PKCS #8 not used");
  bignum_deinit(zero);
  return ((void*)0);
 }
 bignum_deinit(zero);



 if (asn1_get_next(pos, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Expected SEQUENCE "
      "(AlgorithmIdentifier) - found class %d tag 0x%x; "
      "assume PKCS #8 not used",
      hdr.class, hdr.tag);
  return ((void*)0);
 }

 if (asn1_get_oid(hdr.payload, hdr.length, &oid, &pos)) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Failed to parse OID "
      "(algorithm); assume PKCS #8 not used");
  return ((void*)0);
 }

 asn1_oid_to_str(&oid, obuf, sizeof(obuf));
 wpa_printf(MSG_DEBUG, "PKCS #8: algorithm=%s", obuf);

 if (oid.len != 7 ||
     oid.oid[0] != 1 ||
     oid.oid[1] != 2 ||
     oid.oid[2] != 840 ||
     oid.oid[3] != 113549 ||
     oid.oid[4] != 1 ||
     oid.oid[5] != 1 ||
     oid.oid[6] != 1 ) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Unsupported private key "
      "algorithm %s", obuf);
  return ((void*)0);
 }

 pos = hdr.payload + hdr.length;


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_OCTETSTRING) {
  wpa_printf(MSG_DEBUG, "PKCS #8: Expected OCTETSTRING "
      "(privateKey) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return ((void*)0);
 }
 wpa_printf(MSG_DEBUG, "PKCS #8: Try to parse RSAPrivateKey");

 return (struct crypto_private_key *)
  crypto_rsa_import_private_key(hdr.payload, hdr.length);
}
