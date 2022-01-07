
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Doc_Description(void) {
  return
    "The `Doc` class can be used to give documentation to a certain class or "
    "type. This documentation can then be accessed using the `help` function "
    "or by other tools used to generate documentation such as for the Cello "
    "website. Documentation can be written in Markdown."
    "\n\n"
    "The `examples` and `methods` entries should be provided as `NULL` "
    "terminated arrays allocated statically." ;
}
