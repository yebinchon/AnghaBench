
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmlparser {char const* xmlstart; int xmlsize; scalar_t__ attfunc; int datafunc; int endeltfunc; int starteltfunc; struct PortMappingParserData* data; } ;
struct PortMappingParserData {int dummy; } ;


 int endelt ;
 int memset (struct PortMappingParserData*,int ,int) ;
 int parsexml (struct xmlparser*) ;
 int portlisting_data ;
 int startelt ;

void
ParsePortListing(const char * buffer, int bufsize,
                 struct PortMappingParserData * pdata)
{
 struct xmlparser parser;

 memset(pdata, 0, sizeof(struct PortMappingParserData));

 parser.xmlstart = buffer;
 parser.xmlsize = bufsize;
 parser.data = pdata;
 parser.starteltfunc = startelt;
 parser.endeltfunc = endelt;
 parser.datafunc = portlisting_data;
 parser.attfunc = 0;
 parsexml(&parser);
}
