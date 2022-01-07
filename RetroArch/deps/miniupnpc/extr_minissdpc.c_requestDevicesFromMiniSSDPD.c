
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int CODELENGTH (unsigned int,unsigned char*) ;
 int MINISSDPC_INVALID_INPUT ;
 int MINISSDPC_SOCKET_ERROR ;
 int MINISSDPC_SUCCESS ;
 int fprintf (int ,char*,unsigned int,unsigned int) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (unsigned char*,char const*,unsigned int) ;
 int perror (char*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ write (int,unsigned char*,int) ;

int
requestDevicesFromMiniSSDPD(int s, const char * devtype)
{
 unsigned char buffer[256];
 unsigned char * p;
 unsigned int l;
 unsigned stsize = (unsigned)strlen(devtype);
 if(stsize == 8 && 0 == memcmp(devtype, "ssdp:all", 8))
 {
  buffer[0] = 3;
 }
 else
 {
  buffer[0] = 1;
 }
 p = buffer + 1;
 l = stsize; CODELENGTH(l, p);
 if(p + stsize > buffer + sizeof(buffer))
 {





  return MINISSDPC_INVALID_INPUT;
 }
 memcpy(p, devtype, stsize);
 p += stsize;
 if(write(s, buffer, p - buffer) < 0)
 {

  perror("minissdpc.c: write()");
  return MINISSDPC_SOCKET_ERROR;
 }
 return MINISSDPC_SUCCESS;
}
