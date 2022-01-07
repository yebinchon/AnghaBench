
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int * memory; } ;
struct ParserStruct {TYPE_1__ characters; int depth; int tags; } ;
typedef int XML_Char ;


 int free (int *) ;

__attribute__((used)) static void startElement(void *userData, const XML_Char *name,
                         const XML_Char **atts)
{
  struct ParserStruct *state = (struct ParserStruct *) userData;
  state->tags++;
  state->depth++;


  free(state->characters.memory);
  state->characters.memory = ((void*)0);
  state->characters.size = 0;
}
