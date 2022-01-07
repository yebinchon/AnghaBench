
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Function_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var increment(var args) {\n"
      "  struct Int* i = get(args, $I(0));\n"
      "  i->val++;\n"
      "  return NULL;\n"
      "}\n"
      "\n"
      "var x = $I(0);\n"
      "show(x); /* 0 */\n"
      "call($(Function, increment), x);\n"
      "show(x); /* 1 */\n"
    }, {
      "Usage 2",
      "var hello_person(var args) {\n"
      "  print(\"Hello %$!\", get(args, $I(0)));\n"
      "  return NULL;\n"
      "}\n"
      "\n"
      "call($(Function, hello_person), $S(\"Dan\"));\n"
    }, {
      "Usage 3",
      "var add_print(var args) {\n"
      "  int64_t fst = c_int(get(args, $I(0)));\n"
      "  int64_t snd = c_int(get(args, $I(1)));\n"
      "  println(\"%i + %i = %i\", $I(fst), $I(snd), $I(fst+snd));\n"
      "  return NULL;\n"
      "}\n"
      "\n"
      "call($(Function, add_print), $I(10), $I(21));\n"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
