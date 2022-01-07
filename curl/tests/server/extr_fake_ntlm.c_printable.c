
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* HEX_FMT_STR ;
 int HEX_STR_LEN ;
 int NOTHING_LEN ;
 char NOTHING_STR ;
 int free (char*) ;
 char* malloc (size_t) ;
 int msnprintf (char*,size_t,char*,char) ;
 char* realloc (char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *printable(char *inbuf, size_t inlength)
{
  char *outbuf;
  char *newbuf;
  size_t newsize;
  size_t outsize;
  size_t outincr = 0;
  size_t i, o = 0;






  if(!inlength)
    inlength = strlen(inbuf);

  if(inlength) {
    outincr = ((inlength/2) < (6 + 1)) ?
      6 + 1 : inlength/2;
    outsize = inlength + outincr;
  }
  else
    outsize = 9 + 1;

  outbuf = malloc(outsize);
  if(!outbuf)
    return ((void*)0);

  if(!inlength) {
    msnprintf(&outbuf[0], outsize, "%s", "[NOTHING]");
    return outbuf;
  }

  for(i = 0; i<inlength; i++) {

    if(o > outsize - (6 + 1)) {
      newsize = outsize + outincr;
      newbuf = realloc(outbuf, newsize);
      if(!newbuf) {
        free(outbuf);
        return ((void*)0);
      }
      outbuf = newbuf;
      outsize = newsize;
    }

    if((inbuf[i] > 0x20) && (inbuf[i] < 0x7F)) {
      outbuf[o] = inbuf[i];
      o++;
    }
    else {
      msnprintf(&outbuf[o], outsize - o, "[0x%02X]", inbuf[i]);
      o += 6;
    }

  }
  outbuf[o] = '\0';

  return outbuf;
}
