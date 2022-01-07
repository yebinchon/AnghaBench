
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct UPNPDev {int dummy; } ;


 int connectToMiniSSDPD (char const*) ;
 int disconnectFromMiniSSDPD (int) ;
 struct UPNPDev* receiveDevicesFromMiniSSDPD (int,int*) ;
 int requestDevicesFromMiniSSDPD (int,char const*) ;

struct UPNPDev *
getDevicesFromMiniSSDPD(const char * devtype, const char * socketpath, int * error)
{
 struct UPNPDev * devlist = ((void*)0);
 int s;
 int res;

 s = connectToMiniSSDPD(socketpath);
 if (s < 0) {
  if (error)
   *error = s;
  return ((void*)0);
 }
 res = requestDevicesFromMiniSSDPD(s, devtype);
 if (res < 0) {
  if (error)
   *error = res;
 } else {
  devlist = receiveDevicesFromMiniSSDPD(s, error);
 }
 disconnectFromMiniSSDPD(s);
 return devlist;
}
