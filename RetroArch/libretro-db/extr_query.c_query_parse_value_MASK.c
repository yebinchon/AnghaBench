#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int bool_; } ;
struct rmsgpack_dom_value {TYPE_1__ val; void* type; } ;
struct buffer {size_t offset; scalar_t__* data; } ;

/* Variables and functions */
 void* RDT_BOOL ; 
 void* RDT_NULL ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct buffer FUNC2 (struct buffer) ; 
 struct buffer FUNC3 (struct buffer,struct rmsgpack_dom_value*,char const**) ; 
 struct buffer FUNC4 (struct buffer,struct rmsgpack_dom_value*,char const**) ; 
 scalar_t__ FUNC5 (struct buffer,char*) ; 

__attribute__((used)) static struct buffer FUNC6(struct buffer buff,
      struct rmsgpack_dom_value *value, const char **error)
{
   buff = FUNC2(buff);

   if (FUNC5(buff, "nil"))
   {
      buff.offset += FUNC0("nil");
      value->type  = RDT_NULL;
   }
   else if (FUNC5(buff, "true"))
   {
      buff.offset      += FUNC0("true");
      value->type       = RDT_BOOL;
      value->val.bool_  = 1;
   }
   else if (FUNC5(buff, "false"))
   {
      buff.offset       += FUNC0("false");
      value->type        = RDT_BOOL;
      value->val.bool_   = 0;
   }
   else if (FUNC5(buff, "b") || FUNC5(buff, "\"") || FUNC5(buff, "'"))
      buff = FUNC4(buff, value, error);
   else if (FUNC1((int)buff.data[buff.offset]))
      buff = FUNC3(buff, value, error);
   return buff;
}