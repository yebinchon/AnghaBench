
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NameValueParserData {int topelt; char* curelt; scalar_t__ cdatalen; int * cdata; } ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void
NameValueParserStartElt(void * d, const char * name, int l)
{
 struct NameValueParserData * data = (struct NameValueParserData *)d;
 data->topelt = 1;
    if(l>63)
        l = 63;
    memcpy(data->curelt, name, l);
    data->curelt[l] = '\0';
 data->cdata = ((void*)0);
 data->cdatalen = 0;
}
