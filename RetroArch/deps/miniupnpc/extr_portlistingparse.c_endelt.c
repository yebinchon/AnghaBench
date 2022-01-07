
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PortMappingParserData {int curelt; } ;


 int PortMappingEltNone ;

__attribute__((used)) static void
endelt(void * d, const char * name, int l)
{
 struct PortMappingParserData * pdata = (struct PortMappingParserData *)d;
 (void)name;
 (void)l;
 pdata->curelt = PortMappingEltNone;
}
