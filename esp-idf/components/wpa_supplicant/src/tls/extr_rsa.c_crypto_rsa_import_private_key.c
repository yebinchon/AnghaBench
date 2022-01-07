
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int private_key; struct bignum* iqmp; struct bignum* dmq1; struct bignum* dmp1; struct bignum* q; struct bignum* p; struct bignum* d; struct bignum* e; struct bignum* n; } ;
struct bignum {int dummy; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int * payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 scalar_t__ asn1_get_next (int const*,size_t,struct asn1_hdr*) ;
 scalar_t__ bignum_cmp_d (struct bignum*,int ) ;
 int bignum_deinit (struct bignum*) ;
 void* bignum_init () ;
 int crypto_rsa_free (struct crypto_rsa_key*) ;
 int * crypto_rsa_parse_integer (int const*,int const*,struct bignum*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

struct crypto_rsa_key *
crypto_rsa_import_private_key(const u8 *buf, size_t len)
{
 struct crypto_rsa_key *key;
 struct bignum *zero;
 struct asn1_hdr hdr;
 const u8 *pos, *end;

 key = (struct crypto_rsa_key *)os_zalloc(sizeof(*key));
 if (key == ((void*)0))
  return ((void*)0);

 key->private_key = 1;

 key->n = bignum_init();
 key->e = bignum_init();
 key->d = bignum_init();
 key->p = bignum_init();
 key->q = bignum_init();
 key->dmp1 = bignum_init();
 key->dmq1 = bignum_init();
 key->iqmp = bignum_init();

 if (key->n == ((void*)0) || key->e == ((void*)0) || key->d == ((void*)0) ||
     key->p == ((void*)0) || key->q == ((void*)0) || key->dmp1 == ((void*)0) ||
     key->dmq1 == ((void*)0) || key->iqmp == ((void*)0)) {
  crypto_rsa_free(key);
  return ((void*)0);
 }
 if (asn1_get_next(buf, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "RSA: Expected SEQUENCE "
      "(public key) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  goto error;
 }
 pos = hdr.payload;
 end = pos + hdr.length;

 zero = bignum_init();
 if (zero == ((void*)0))
  goto error;
 pos = crypto_rsa_parse_integer(pos, end, zero);
 if (pos == ((void*)0) || bignum_cmp_d(zero, 0) != 0) {
  wpa_printf(MSG_DEBUG, "RSA: Expected zero INTEGER in the "
      "beginning of private key; not found");
  bignum_deinit(zero);
  goto error;
 }
 bignum_deinit(zero);

 pos = crypto_rsa_parse_integer(pos, end, key->n);
 pos = crypto_rsa_parse_integer(pos, end, key->e);
 pos = crypto_rsa_parse_integer(pos, end, key->d);
 pos = crypto_rsa_parse_integer(pos, end, key->p);
 pos = crypto_rsa_parse_integer(pos, end, key->q);
 pos = crypto_rsa_parse_integer(pos, end, key->dmp1);
 pos = crypto_rsa_parse_integer(pos, end, key->dmq1);
 pos = crypto_rsa_parse_integer(pos, end, key->iqmp);

 if (pos == ((void*)0))
  goto error;

 if (pos != end) {
  wpa_hexdump(MSG_DEBUG,
       "RSA: Extra data in public key SEQUENCE",
       pos, end - pos);
  goto error;
 }

 return key;

error:
 crypto_rsa_free(key);
 return ((void*)0);
}
