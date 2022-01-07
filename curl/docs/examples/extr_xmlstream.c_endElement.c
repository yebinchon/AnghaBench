
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct ParserStruct {TYPE_1__ characters; int depth; } ;
typedef int XML_Char ;


 int printf (char*,int ,int ,int const*) ;

__attribute__((used)) static void endElement(void *userData, const XML_Char *name)
{
  struct ParserStruct *state = (struct ParserStruct *) userData;
  state->depth--;

  printf("%5lu   %10lu   %s\n", state->depth, state->characters.size, name);
}
