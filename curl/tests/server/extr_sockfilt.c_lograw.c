
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int data ;


 int ISGRAPH (unsigned char) ;
 int logmsg (char*,char*) ;
 int msnprintf (char*,int,char*,...) ;

__attribute__((used)) static void lograw(unsigned char *buffer, ssize_t len)
{
  char data[120];
  ssize_t i;
  unsigned char *ptr = buffer;
  char *optr = data;
  ssize_t width = 0;
  int left = sizeof(data);

  for(i = 0; i<len; i++) {
    switch(ptr[i]) {
    case '\n':
      msnprintf(optr, left, "\\n");
      width += 2;
      optr += 2;
      left -= 2;
      break;
    case '\r':
      msnprintf(optr, left, "\\r");
      width += 2;
      optr += 2;
      left -= 2;
      break;
    default:
      msnprintf(optr, left, "%c", (ISGRAPH(ptr[i]) ||
                                   ptr[i] == 0x20) ?ptr[i]:'.');
      width++;
      optr++;
      left--;
      break;
    }

    if(width>60) {
      logmsg("'%s'", data);
      width = 0;
      optr = data;
      left = sizeof(data);
    }
  }
  if(width)
    logmsg("'%s'", data);
}
