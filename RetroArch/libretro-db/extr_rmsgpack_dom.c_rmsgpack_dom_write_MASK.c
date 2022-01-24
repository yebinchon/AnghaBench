#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {unsigned int len; struct rmsgpack_dom_value* items; } ;
struct TYPE_10__ {unsigned int len; TYPE_3__* items; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buff; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buff; } ;
struct TYPE_12__ {TYPE_5__ array; TYPE_4__ map; TYPE_2__ binary; TYPE_1__ string; int /*<<< orphan*/  uint_; int /*<<< orphan*/  int_; int /*<<< orphan*/  bool_; } ;
struct rmsgpack_dom_value {int type; TYPE_6__ val; } ;
struct TYPE_9__ {struct rmsgpack_dom_value value; struct rmsgpack_dom_value key; } ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
#define  RDT_ARRAY 135 
#define  RDT_BINARY 134 
#define  RDT_BOOL 133 
#define  RDT_INT 132 
#define  RDT_MAP 131 
#define  RDT_NULL 130 
#define  RDT_STRING 129 
#define  RDT_UINT 128 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(RFILE *fd, const struct rmsgpack_dom_value *obj)
{
   unsigned i;
   int rv = 0;
   int written = 0;

   switch (obj->type)
   {
      case RDT_NULL:
         return FUNC5(fd);
      case RDT_BOOL:
         return FUNC2(fd, obj->val.bool_);
      case RDT_INT:
         return FUNC3(fd, obj->val.int_);
      case RDT_UINT:
         return FUNC7(fd, obj->val.uint_);
      case RDT_STRING:
         return FUNC6(fd, obj->val.string.buff, obj->val.string.len);
      case RDT_BINARY:
         return FUNC1(fd, obj->val.binary.buff, obj->val.binary.len);
      case RDT_MAP:
         if ((rv = FUNC4(fd, obj->val.map.len)) < 0)
            return rv;
         written += rv;

         for (i = 0; i < obj->val.map.len; i++)
         {
            if ((rv = FUNC8(fd, &obj->val.map.items[i].key)) < 0)
               return rv;
            written += rv;
            if ((rv = FUNC8(fd, &obj->val.map.items[i].value)) < 0)
               return rv;
            written += rv;
         }
         break;
      case RDT_ARRAY:
         if ((rv = FUNC0(fd, obj->val.array.len)) < 0)
            return rv;
         written += rv;

         for (i = 0; i < obj->val.array.len; i++)
         {
            if ((rv = FUNC8(fd, &obj->val.array.items[i])) < 0)
               return rv;
            written += rv;
         }
   }
   return written;
}