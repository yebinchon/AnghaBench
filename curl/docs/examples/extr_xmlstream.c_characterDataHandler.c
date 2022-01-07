
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStruct {char* memory; int size; } ;
struct ParserStruct {scalar_t__ ok; struct MemoryStruct characters; } ;
typedef int XML_Char ;


 int fprintf (int ,char*) ;
 int memcpy (char*,int const*,int) ;
 char* realloc (char*,int) ;
 int stderr ;

__attribute__((used)) static void characterDataHandler(void *userData, const XML_Char *s, int len)
{
  struct ParserStruct *state = (struct ParserStruct *) userData;
  struct MemoryStruct *mem = &state->characters;

  char *ptr = realloc(mem->memory, mem->size + len + 1);
  if(!ptr) {

    fprintf(stderr, "Not enough memory (realloc returned NULL).\n");
    state->ok = 0;
    return;
  }

  mem->memory = ptr;
  memcpy(&(mem->memory[mem->size]), s, len);
  mem->size += len;
  mem->memory[mem->size] = 0;
}
