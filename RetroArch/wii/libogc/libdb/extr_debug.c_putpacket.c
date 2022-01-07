
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int getdbgchar () ;
 void** hexchars ;
 int putdbgstr (char*) ;

__attribute__((used)) static void putpacket(const char *buffer)
{
 u8 recv;
 u8 chksum,ch;
 char *ptr;
 const char *inp;
 static char outbuf[2048];

 do {
  inp = buffer;
  ptr = outbuf;

  *ptr++ = '$';

  chksum = 0;
  while((ch=*inp++)!='\0') {
   *ptr++ = ch;
   chksum += ch;
  }

  *ptr++ = '#';
  *ptr++ = hexchars[chksum>>4];
  *ptr++ = hexchars[chksum&0x0f];
  *ptr = '\0';

  putdbgstr(outbuf);

  recv = getdbgchar();
 } while((recv&0x7f)!='+');
}
