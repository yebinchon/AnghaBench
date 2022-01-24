#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Example {char* member_0; char* member_1; } ;

/* Variables and functions */

__attribute__((used)) static struct Example* FUNC0(void) {
  
  static struct Example examples[] = {
    {
      "Usage",
      "var obj0 = $F(1.0), obj1 = $F(2.0);\n"
      "var r = $(Ref, obj0);\n"
      "show(r);\n"
      "show(deref(r)); /* 1.0 */\n"
      "ref(r, obj1);\n"
      "show(deref(r)); /* 2.0 */\n"
      "assign(r, obj0);\n"
      "show(deref(r)); /* 1.0 */\n"
    }, {
      "Collections",
      "var i0 = new(Int, $I(100));\n"
      "var i1 = new(Int, $I(200));\n"
      "var x = new(Array, Ref, i0, i1);\n"
      "\n"
      "print(deref(get(x, $I(0)))); /* 100 */"
      "\n"
      "del(x); /* Contents of `x` still alive */\n"
    }, {NULL, NULL}
  };

  return examples;
  
}