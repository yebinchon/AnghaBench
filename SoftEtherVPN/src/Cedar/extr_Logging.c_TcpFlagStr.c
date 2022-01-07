
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UCHAR ;


 char* CopyStr (char*) ;
 int MAX_SIZE ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int TCP_ACK ;
 int TCP_FIN ;
 int TCP_PSH ;
 int TCP_RST ;
 int TCP_SYN ;
 int TCP_URG ;

char *TcpFlagStr(UCHAR flag)
{
 char tmp[MAX_SIZE];
 StrCpy(tmp, sizeof(tmp), "");

 if (flag & TCP_FIN)
 {
  StrCat(tmp, sizeof(tmp), "FIN+");
 }

 if (flag & TCP_SYN)
 {
  StrCat(tmp, sizeof(tmp), "SYN+");
 }

 if (flag & TCP_RST)
 {
  StrCat(tmp, sizeof(tmp), "RST+");
 }

 if (flag & TCP_PSH)
 {
  StrCat(tmp, sizeof(tmp), "PSH+");
 }

 if (flag & TCP_ACK)
 {
  StrCat(tmp, sizeof(tmp), "ACK+");
 }

 if (flag & TCP_URG)
 {
  StrCat(tmp, sizeof(tmp), "URG+");
 }

 if (StrLen(tmp) >= 1)
 {
  if (tmp[StrLen(tmp) - 1] == '+')
  {
   tmp[StrLen(tmp) - 1] = 0;
  }
 }

 return CopyStr(tmp);
}
