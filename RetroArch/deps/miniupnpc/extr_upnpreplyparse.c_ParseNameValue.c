
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmlparser {char const* xmlstart; int xmlsize; scalar_t__ attfunc; int datafunc; int endeltfunc; int starteltfunc; struct NameValueParserData* data; } ;
struct NameValueParserData {scalar_t__ portListingLength; int * portListing; int * l_head; } ;


 int NameValueParserEndElt ;
 int NameValueParserGetData ;
 int NameValueParserStartElt ;
 int parsexml (struct xmlparser*) ;

void
ParseNameValue(const char * buffer, int bufsize,
               struct NameValueParserData * data)
{
 struct xmlparser parser;
 data->l_head = ((void*)0);
 data->portListing = ((void*)0);
 data->portListingLength = 0;

 parser.xmlstart = buffer;
 parser.xmlsize = bufsize;
 parser.data = data;
 parser.starteltfunc = NameValueParserStartElt;
 parser.endeltfunc = NameValueParserEndElt;
 parser.datafunc = NameValueParserGetData;
 parser.attfunc = 0;
 parsexml(&parser);
}
