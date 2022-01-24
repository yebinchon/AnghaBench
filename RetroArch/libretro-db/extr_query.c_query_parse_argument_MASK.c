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
struct buffer {size_t offset; scalar_t__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; int /*<<< orphan*/  invocation; } ;
struct argument {TYPE_1__ a; void* type; } ;

/* Variables and functions */
 void* AT_FUNCTION ; 
 void* AT_VALUE ; 
 scalar_t__ FUNC0 (int) ; 
 struct buffer FUNC1 (struct buffer) ; 
 struct buffer FUNC2 (struct buffer,int /*<<< orphan*/ *,char const**) ; 
 struct buffer FUNC3 (struct buffer,int /*<<< orphan*/ *,char const**) ; 
 struct buffer FUNC4 (struct buffer,int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC5 (struct buffer,char*) ; 

__attribute__((used)) static struct buffer FUNC6(struct buffer buff,
      struct argument *arg, const char **error)
{
   buff = FUNC1(buff);

   if (
         FUNC0((int)buff.data[buff.offset])
         && !(
               FUNC5(buff, "nil")
            || FUNC5(buff, "true")
            || FUNC5(buff, "false")
            || FUNC5(buff, "b\"")
            || FUNC5(buff,  "b'") /* bin string prefix*/
            )
      )
   {
      arg->type = AT_FUNCTION;
      buff      = FUNC2(buff,
            &arg->a.invocation, error);
   }
   else if (FUNC5(buff, "{"))
   {
      arg->type = AT_FUNCTION;
      buff      = FUNC3(buff, &arg->a.invocation, error);
   }
   else
   {
      arg->type = AT_VALUE;
      buff      = FUNC4(buff, &arg->a.value, error);
   }
   return buff;
}