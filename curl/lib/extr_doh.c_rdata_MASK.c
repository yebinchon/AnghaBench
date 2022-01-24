#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dohentry {int dummy; } ;
typedef  int /*<<< orphan*/  DOHcode ;

/* Variables and functions */
#define  DNS_TYPE_A 130 
#define  DNS_TYPE_AAAA 129 
#define  DNS_TYPE_CNAME 128 
 int /*<<< orphan*/  DOH_DNS_RDATA_LEN ; 
 int /*<<< orphan*/  DOH_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,struct dohentry*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,struct dohentry*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t,int,struct dohentry*) ; 

__attribute__((used)) static DOHcode FUNC3(unsigned char *doh,
                     size_t dohlen,
                     unsigned short rdlength,
                     unsigned short type,
                     int index,
                     struct dohentry *d)
{
  /* RDATA
     - A (TYPE 1):  4 bytes
     - AAAA (TYPE 28): 16 bytes
     - NS (TYPE 2): N bytes */
  DOHcode rc;

  switch(type) {
  case DNS_TYPE_A:
    if(rdlength != 4)
      return DOH_DNS_RDATA_LEN;
    rc = FUNC0(doh, index, d);
    if(rc)
      return rc;
    break;
  case DNS_TYPE_AAAA:
    if(rdlength != 16)
      return DOH_DNS_RDATA_LEN;
    rc = FUNC1(doh, index, d);
    if(rc)
      return rc;
    break;
  case DNS_TYPE_CNAME:
    rc = FUNC2(doh, dohlen, index, d);
    if(rc)
      return rc;
    break;
  default:
    /* unsupported type, just skip it */
    break;
  }
  return DOH_OK;
}