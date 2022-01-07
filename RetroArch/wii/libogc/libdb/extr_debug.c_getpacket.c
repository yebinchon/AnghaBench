
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef size_t s32 ;


 size_t BUFMAX ;
 int getdbgchar () ;
 char hex (int) ;
 int putdbgchar (char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void getpacket(char *buffer)
{
 char ch;
 u8 chksum,xmitsum;
 s32 i,cnt;

 do {
  while((ch=(getdbgchar()&0x7f))!='$');

  cnt = 0;
  chksum = 0;
  xmitsum = -1;

  while(cnt<BUFMAX) {
   ch = getdbgchar()&0x7f;
   if(ch=='#') break;

   chksum += ch;
   buffer[cnt] = ch;
   cnt++;
  }
  if(cnt>=BUFMAX) continue;

  buffer[cnt] = 0;
  if(ch=='#') {
   xmitsum = hex(getdbgchar()&0x7f)<<4;
   xmitsum |= hex(getdbgchar()&0x7f);

   if(chksum!=xmitsum) putdbgchar('-');
   else {
    putdbgchar('+');
    if(buffer[2]==':') {
     putdbgchar(buffer[0]);
     putdbgchar(buffer[1]);

     cnt = strlen((const char*)buffer);
     for(i=3;i<=cnt;i++) buffer[i-3] = buffer[i];
    }
   }
  }
 } while(chksum!=xmitsum);
}
