
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmlparser {scalar_t__ xmlsize; scalar_t__ xmlstart; scalar_t__ xmlend; scalar_t__ xml; } ;


 int parseelt (struct xmlparser*) ;

void parsexml(struct xmlparser * parser)
{
 parser->xml = parser->xmlstart;
 parser->xmlend = parser->xmlstart + parser->xmlsize;
 parseelt(parser);
}
