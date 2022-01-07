
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Example {char* member_0; char* member_1; } ;



__attribute__((used)) static struct Example* Mutex_Examples(void) {

  static struct Example examples[] = {
    {
      "Usage",
      "var x = new(Mutex);\n"
      "with (mut in x) { /* Lock Mutex */ \n"
      "  print(\"Inside Mutex!\\n\");\n"
      "} /* Unlock Mutex */"
    }, {((void*)0), ((void*)0)}
  };

  return examples;

}
