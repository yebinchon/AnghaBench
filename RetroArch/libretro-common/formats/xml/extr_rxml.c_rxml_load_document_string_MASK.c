#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* elem; char* data; char* attr; } ;
typedef  TYPE_1__ yxml_t ;
typedef  int yxml_ret_t ;
struct rxml_parse_buffer {char* val; TYPE_2__** stack; int /*<<< orphan*/  xml; } ;
struct rxml_attrib_node {void* value; void* attrib; struct rxml_attrib_node* next; } ;
struct TYPE_9__ {struct rxml_attrib_node* attrib; void* data; void* name; struct TYPE_9__* next; struct TYPE_9__* children; } ;
typedef  TYPE_2__ rxml_node_t ;
struct TYPE_10__ {TYPE_2__* root_node; } ;
typedef  TYPE_3__ rxml_document_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZE ; 
#define  YXML_ATTREND 133 
#define  YXML_ATTRSTART 132 
#define  YXML_ATTRVAL 131 
#define  YXML_CONTENT 130 
#define  YXML_ELEMEND 129 
#define  YXML_ELEMSTART 128 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rxml_parse_buffer*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,char const) ; 

rxml_document_t *FUNC7(const char *str)
{
   rxml_document_t *doc          = NULL;
   struct rxml_parse_buffer *buf = NULL;
   size_t stack_i                = 0;
   size_t level                  = 0;
   int c                         = 0;
   char *valptr                  = NULL;
   yxml_t x;

   rxml_node_t *node             = NULL;
   struct rxml_attrib_node *attr = NULL;

   buf = (struct rxml_parse_buffer*)FUNC2(sizeof(*buf));
   if (!buf)
      goto error;

   valptr = buf->val;

   doc = (rxml_document_t*)FUNC0(1, sizeof(*doc));
   if (!doc)
      goto error;

   FUNC5(&x, buf->xml, BUFSIZE);

   for (; *str; ++str) {
      yxml_ret_t r = FUNC6(&x, *str);

      if (r < 0)
         goto error;

      switch (r) {

      case YXML_ELEMSTART:
         if (node) {
            if (level > stack_i) {
               buf->stack[stack_i] = node;
               ++stack_i;

               node->children = (rxml_node_t*)FUNC0(1, sizeof(*node));
               node = node->children;
            }
            else {
               node->next = (rxml_node_t*)FUNC0(1, sizeof(*node));
               node = node->next;
            }
         }
         else {
            node = doc->root_node = (rxml_node_t*)FUNC0(1, sizeof(*node));
         }

         node->name = FUNC4(x.elem);
         attr = NULL;

         ++level;
         break;

      case YXML_ELEMEND:
         --level;

         if (valptr > buf->val) {
            *valptr = '\0';
            node->data = FUNC4(buf->val);
            valptr = buf->val;
         }

         if (level < stack_i) {
            --stack_i;
            node = buf->stack[stack_i];
         }
         break;

      case YXML_CONTENT:
         for (c = 0; c < sizeof(x.data) && x.data[c]; ++c) {
            *valptr = x.data[c];
            ++valptr;
         }
         break;

      case YXML_ATTRSTART:
         if (attr)
            attr = attr->next = (struct rxml_attrib_node*)FUNC0(1, sizeof(*attr));
         else
            attr = node->attrib = (struct rxml_attrib_node*)FUNC0(1, sizeof(*attr));

         attr->attrib = FUNC4(x.attr);
         valptr = buf->val;
         break;

      case YXML_ATTRVAL:
         for(c = 0; c < sizeof(x.data) && x.data[c]; ++c) {
            *valptr = x.data[c];
            ++valptr;
         }
         break;

      case YXML_ATTREND:
         if (valptr > buf->val) {
            *valptr = '\0';
            attr->value = FUNC4(buf->val);
            valptr = buf->val;
         }
         break;

      default:
         break;
      }
   }

   FUNC1(buf);
   return doc;

error:
   FUNC3(doc);
   FUNC1(buf);
   return NULL;
}