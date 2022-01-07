
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Exception_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Table, String, Int);\n"
      "set(x, $S(\"Hello\"), $I(1));\n"
      "set(x, $S(\"World\"), $I(2));\n"
      "\n"
      "try {\n"
      "  get(x, $S(\"Missing\"));\n"
      "} catch (e in KeyError) {\n"
      "  println(\"Got Exception: %$\", e);\n"
      "}\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
