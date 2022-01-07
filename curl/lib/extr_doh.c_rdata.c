
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dohentry {int dummy; } ;
typedef int DOHcode ;





 int DOH_DNS_RDATA_LEN ;
 int DOH_OK ;
 int store_a (unsigned char*,int,struct dohentry*) ;
 int store_aaaa (unsigned char*,int,struct dohentry*) ;
 int store_cname (unsigned char*,size_t,int,struct dohentry*) ;

__attribute__((used)) static DOHcode rdata(unsigned char *doh,
                     size_t dohlen,
                     unsigned short rdlength,
                     unsigned short type,
                     int index,
                     struct dohentry *d)
{




  DOHcode rc;

  switch(type) {
  case 130:
    if(rdlength != 4)
      return DOH_DNS_RDATA_LEN;
    rc = store_a(doh, index, d);
    if(rc)
      return rc;
    break;
  case 129:
    if(rdlength != 16)
      return DOH_DNS_RDATA_LEN;
    rc = store_aaaa(doh, index, d);
    if(rc)
      return rc;
    break;
  case 128:
    rc = store_cname(doh, dohlen, index, d);
    if(rc)
      return rc;
    break;
  default:

    break;
  }
  return DOH_OK;
}
