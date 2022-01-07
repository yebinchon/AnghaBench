
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* xmlXPathObjectPtr ;
typedef int xmlXPathContextPtr ;
typedef TYPE_3__* xmlNodeSetPtr ;
typedef int xmlNode ;
typedef char xmlChar ;
struct TYPE_12__ {int size; int buf; } ;
typedef TYPE_4__ memory ;
typedef int htmlDocPtr ;
struct TYPE_11__ {int nodeNr; TYPE_1__** nodeTab; } ;
struct TYPE_10__ {TYPE_3__* nodesetval; } ;
struct TYPE_9__ {int * xmlChildrenNode; } ;
typedef int CURLM ;


 int HTML_PARSE_NOBLANKS ;
 int HTML_PARSE_NOERROR ;
 int HTML_PARSE_NONET ;
 int HTML_PARSE_NOWARNING ;
 double RAND_MAX ;
 int curl_multi_add_handle (int *,int ) ;
 scalar_t__ follow_relative_links ;
 int htmlReadMemory (int ,int ,char*,int *,int) ;
 int make_handle (char*) ;
 int max_link_per_page ;
 double rand () ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 char* xmlBuildURI (char*,char*) ;
 int xmlFree (char*) ;
 char* xmlNodeListGetString (int ,int const*,int) ;
 TYPE_2__* xmlXPathEvalExpression (char*,int ) ;
 int xmlXPathFreeContext (int ) ;
 int xmlXPathFreeObject (TYPE_2__*) ;
 int xmlXPathNewContext (int ) ;
 scalar_t__ xmlXPathNodeSetIsEmpty (TYPE_3__*) ;

size_t follow_links(CURLM *multi_handle, memory *mem, char *url)
{
  int opts = HTML_PARSE_NOBLANKS | HTML_PARSE_NOERROR | HTML_PARSE_NOWARNING | HTML_PARSE_NONET;

  htmlDocPtr doc = htmlReadMemory(mem->buf, mem->size, url, ((void*)0), opts);
  if(!doc)
    return 0;
  xmlChar *xpath = (xmlChar*) "//a/@href";
  xmlXPathContextPtr context = xmlXPathNewContext(doc);
  xmlXPathObjectPtr result = xmlXPathEvalExpression(xpath, context);
  xmlXPathFreeContext(context);
  if(!result)
    return 0;
  xmlNodeSetPtr nodeset = result->nodesetval;
  if(xmlXPathNodeSetIsEmpty(nodeset)) {
    xmlXPathFreeObject(result);
    return 0;
  }
  size_t count = 0;
  for(int i = 0; i < nodeset->nodeNr; i++) {
    double r = rand();
    int x = r * nodeset->nodeNr / RAND_MAX;
    const xmlNode *node = nodeset->nodeTab[x]->xmlChildrenNode;
    xmlChar *href = xmlNodeListGetString(doc, node, 1);
    if(follow_relative_links) {
      xmlChar *orig = href;
      href = xmlBuildURI(href, (xmlChar *) url);
      xmlFree(orig);
    }
    char *link = (char *) href;
    if(!link || strlen(link) < 20)
      continue;
    if(!strncmp(link, "http://", 7) || !strncmp(link, "https://", 8)) {
      curl_multi_add_handle(multi_handle, make_handle(link));
      if(count++ == max_link_per_page)
        break;
    }
    xmlFree(link);
  }
  xmlXPathFreeObject(result);
  return count;
}
