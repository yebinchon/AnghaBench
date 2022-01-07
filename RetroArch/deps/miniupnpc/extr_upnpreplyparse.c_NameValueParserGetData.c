
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NameValueParserData {char* portListing; int portListingLength; char const* cdata; int cdatalen; int curelt; } ;


 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
NameValueParserGetData(void * d, const char * datas, int l)
{
    struct NameValueParserData * data = (struct NameValueParserData *)d;
 if(strcmp(data->curelt, "NewPortListing") == 0)
 {

  data->portListing = (char*)malloc(l + 1);
  if(!data->portListing)
  {





   return;
  }
  memcpy(data->portListing, datas, l);
  data->portListing[l] = '\0';
  data->portListingLength = l;
 }
 else
 {

  data->cdata = datas;
  data->cdatalen = l;
 }
}
