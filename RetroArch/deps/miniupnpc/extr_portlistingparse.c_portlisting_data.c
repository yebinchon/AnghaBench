
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PortMappingParserData {int curelt; struct PortMapping* l_head; } ;
struct PortMapping {char* remoteHost; unsigned short externalPort; char* protocol; unsigned short internalPort; char* internalClient; unsigned char enabled; char* description; scalar_t__ leaseTime; } ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ my_atoui (char const*,int) ;

__attribute__((used)) static void portlisting_data(void * d, const char * data, int l)
{
 struct PortMapping * pm;
 struct PortMappingParserData * pdata = (struct PortMappingParserData *)d;
 pm = pdata->l_head;
 if(!pm)
  return;
 if(l > 63)
  l = 63;
 switch(pdata->curelt)
 {
 case 128:
  memcpy(pm->remoteHost, data, l);
  pm->remoteHost[l] = '\0';
  break;
 case 133:
  pm->externalPort = (unsigned short)my_atoui(data, l);
  break;
 case 129:
  if(l > 3)
   l = 3;
  memcpy(pm->protocol, data, l);
  pm->protocol[l] = '\0';
  break;
 case 131:
  pm->internalPort = (unsigned short)my_atoui(data, l);
  break;
 case 132:
  memcpy(pm->internalClient, data, l);
  pm->internalClient[l] = '\0';
  break;
 case 134:
  pm->enabled = (unsigned char)my_atoui(data, l);
  break;
 case 135:
  memcpy(pm->description, data, l);
  pm->description[l] = '\0';
  break;
 case 130:
  pm->leaseTime = my_atoui(data, l);
  break;
 default:
  break;
 }
}
