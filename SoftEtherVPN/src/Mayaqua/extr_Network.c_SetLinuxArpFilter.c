
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IO ;


 int FileClose (int *) ;
 int * FileCreate (char*) ;
 int FileFlush (int *) ;
 int FileWrite (int *,char*,int ) ;
 int StrLen (char*) ;

void SetLinuxArpFilter()
{
 char *filename = "/proc/sys/net/ipv4/conf/all/arp_filter";
 char *data = "1\n";
 IO *o;

 o = FileCreate(filename);
 if (o == ((void*)0))
 {
  return;
 }

 FileWrite(o, data, StrLen(data));
 FileFlush(o);

 FileClose(o);
}
