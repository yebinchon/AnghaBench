#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlXPathObjectPtr ;
typedef  int /*<<< orphan*/  xmlXPathContextPtr ;
typedef  TYPE_3__* xmlNodeSetPtr ;
typedef  int /*<<< orphan*/  xmlNode ;
typedef  char xmlChar ;
struct TYPE_12__ {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; } ;
typedef  TYPE_4__ memory ;
typedef  int /*<<< orphan*/  htmlDocPtr ;
struct TYPE_11__ {int nodeNr; TYPE_1__** nodeTab; } ;
struct TYPE_10__ {TYPE_3__* nodesetval; } ;
struct TYPE_9__ {int /*<<< orphan*/ * xmlChildrenNode; } ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int HTML_PARSE_NOBLANKS ; 
 int HTML_PARSE_NOERROR ; 
 int HTML_PARSE_NONET ; 
 int HTML_PARSE_NOWARNING ; 
 double RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ follow_relative_links ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  max_link_per_page ; 
 double FUNC3 () ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 TYPE_2__* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 

size_t FUNC14(CURLM *multi_handle, memory *mem, char *url)
{
  int opts = HTML_PARSE_NOBLANKS | HTML_PARSE_NOERROR | \
             HTML_PARSE_NOWARNING | HTML_PARSE_NONET;
  htmlDocPtr doc = FUNC1(mem->buf, mem->size, url, NULL, opts);
  if(!doc)
    return 0;
  xmlChar *xpath = (xmlChar*) "//a/@href";
  xmlXPathContextPtr context = FUNC12(doc);
  xmlXPathObjectPtr result = FUNC9(xpath, context);
  FUNC10(context);
  if(!result)
    return 0;
  xmlNodeSetPtr nodeset = result->nodesetval;
  if(FUNC13(nodeset)) {
    FUNC11(result);
    return 0;
  }
  size_t count = 0;
  for(int i = 0; i < nodeset->nodeNr; i++) {
    double r = FUNC3();
    int x = r * nodeset->nodeNr / RAND_MAX;
    const xmlNode *node = nodeset->nodeTab[x]->xmlChildrenNode;
    xmlChar *href = FUNC8(doc, node, 1);
    if(follow_relative_links) {
      xmlChar *orig = href;
      href = FUNC6(href, (xmlChar *) url);
      FUNC7(orig);
    }
    char *link = (char *) href;
    if(!link || FUNC4(link) < 20)
      continue;
    if(!FUNC5(link, "http://", 7) || !FUNC5(link, "https://", 8)) {
      FUNC0(multi_handle, FUNC2(link));
      if(count++ == max_link_per_page)
        break;
    }
    FUNC7(link);
  }
  FUNC11(result);
  return count;
}