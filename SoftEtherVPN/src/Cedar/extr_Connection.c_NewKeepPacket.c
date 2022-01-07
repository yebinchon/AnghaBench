
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 char* KEEP_ALIVE_STRING ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 int StrLen (char*) ;
 int WriteBuf (int *,char*,int ) ;

BUF *NewKeepPacket(bool server_mode)
{
 BUF *b = NewBuf();
 char *string = KEEP_ALIVE_STRING;

 WriteBuf(b, string, StrLen(string));

 SeekBuf(b, 0, 0);

 return b;
}
