
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dohentry {scalar_t__ numcname; struct cnamestore* cname; } ;
struct cnamestore {scalar_t__ len; } ;
typedef scalar_t__ DOHcode ;


 scalar_t__ DOH_DNS_BAD_LABEL ;
 scalar_t__ DOH_DNS_LABEL_LOOP ;
 scalar_t__ DOH_DNS_OUT_OF_RANGE ;
 scalar_t__ DOH_MAX_CNAME ;
 scalar_t__ DOH_OK ;
 scalar_t__ cnameappend (struct cnamestore*,unsigned char*,unsigned char) ;

__attribute__((used)) static DOHcode store_cname(unsigned char *doh,
                           size_t dohlen,
                           unsigned int index,
                           struct dohentry *d)
{
  struct cnamestore *c;
  unsigned int loop = 128;
  unsigned char length;

  if(d->numcname == DOH_MAX_CNAME)
    return DOH_OK;

  c = &d->cname[d->numcname++];
  do {
    if(index >= dohlen)
      return DOH_DNS_OUT_OF_RANGE;
    length = doh[index];
    if((length & 0xc0) == 0xc0) {
      int newpos;

      if((index + 1) >= dohlen)
        return DOH_DNS_OUT_OF_RANGE;


      newpos = (length & 0x3f) << 8 | doh[index + 1];
      index = newpos;
      continue;
    }
    else if(length & 0xc0)
      return DOH_DNS_BAD_LABEL;
    else
      index++;

    if(length) {
      DOHcode rc;
      if(c->len) {
        rc = cnameappend(c, (unsigned char *)".", 1);
        if(rc)
          return rc;
      }
      if((index + length) > dohlen)
        return DOH_DNS_BAD_LABEL;

      rc = cnameappend(c, &doh[index], length);
      if(rc)
        return rc;
      index += length;
    }
  } while(length && --loop);

  if(!loop)
    return DOH_DNS_LABEL_LOOP;
  return DOH_OK;
}
