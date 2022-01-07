
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PortMappingParserData {scalar_t__ curelt; struct PortMapping* l_head; } ;
struct PortMapping {struct PortMapping* l_next; } ;
struct TYPE_2__ {scalar_t__ code; scalar_t__ str; } ;


 scalar_t__ PortMappingEltNone ;
 scalar_t__ PortMappingEntry ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* elements ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ memcmp (char const*,scalar_t__,int) ;
 int stderr ;
 size_t strlen (scalar_t__) ;

__attribute__((used)) static void
startelt(void * d, const char * name, int l)
{
 int i;
 struct PortMappingParserData * pdata = (struct PortMappingParserData *)d;
 pdata->curelt = PortMappingEltNone;
 for(i = 0; elements[i].str; i++)
 {
  if(strlen(elements[i].str) == (size_t)l && memcmp(name, elements[i].str, l) == 0)
  {
   pdata->curelt = elements[i].code;
   break;
  }
 }
 if(pdata->curelt == PortMappingEntry)
 {
  struct PortMapping * pm;
  pm = (struct PortMapping*)calloc(1, sizeof(struct PortMapping));
  if(pm == ((void*)0))
  {





   return;
  }
  pm->l_next = pdata->l_head;
  pdata->l_head = pm;
 }
}
