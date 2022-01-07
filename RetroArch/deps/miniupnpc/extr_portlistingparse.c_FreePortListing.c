
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PortMappingParserData {struct PortMapping* l_head; } ;
struct PortMapping {struct PortMapping* l_next; } ;


 int free (struct PortMapping*) ;

void
FreePortListing(struct PortMappingParserData * pdata)
{
 struct PortMapping * pm;
 while((pm = pdata->l_head) != ((void*)0))
 {

  pdata->l_head = pm->l_next;
  free(pm);
 }
}
