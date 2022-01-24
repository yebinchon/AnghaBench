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
typedef  size_t uint32_t ;
struct TYPE_11__ {size_t len; struct rmsgpack_dom_value* items; } ;
struct TYPE_10__ {size_t len; TYPE_3__* items; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buff; } ;
struct TYPE_7__ {int /*<<< orphan*/  buff; } ;
struct TYPE_12__ {TYPE_5__ array; TYPE_4__ map; TYPE_2__ binary; TYPE_1__ string; int /*<<< orphan*/  bool_; int /*<<< orphan*/  uint_; int /*<<< orphan*/  int_; } ;
struct rmsgpack_dom_value {int type; TYPE_6__ val; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {struct rmsgpack_dom_value value; struct rmsgpack_dom_value key; } ;

/* Variables and functions */
#define  RDT_ARRAY 135 
#define  RDT_BINARY 134 
#define  RDT_BOOL 133 
#define  RDT_INT 132 
#define  RDT_MAP 131 
#define  RDT_NULL 130 
#define  RDT_STRING 129 
#define  RDT_UINT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(lua_State *L, struct rmsgpack_dom_value *value)
{
   uint32_t i;

   switch(value->type)
   {
      case RDT_INT:
         FUNC4(L, value->val.int_);
         break;
      case RDT_UINT:
         FUNC4(L, value->val.uint_);
         break;
      case RDT_BINARY:
         FUNC2(L, value->val.binary.buff, value->val.binary.len);
         break;
      case RDT_BOOL:
         FUNC1(L, value->val.bool_);
         break;
      case RDT_NULL:
         FUNC3(L);
         break;
      case RDT_STRING:
         FUNC2(L, value->val.string.buff, value->val.binary.len);
         break;
      case RDT_MAP:
         FUNC0(L, 0, value->val.map.len);
         for (i = 0; i < value->val.map.len; i++)
         {
            FUNC6(L, &value->val.map.items[i].key);
            FUNC6(L, &value->val.map.items[i].value);
            FUNC5(L, -3);
         }
         break;
      case RDT_ARRAY:
         FUNC0(L, value->val.array.len, 0);
         for (i = 0; i < value->val.array.len; i++)
         {
            FUNC4(L, i + 1);
            FUNC6(L, &value->val.array.items[i]);
            FUNC5(L, -3);
         }
         break;
   }
}