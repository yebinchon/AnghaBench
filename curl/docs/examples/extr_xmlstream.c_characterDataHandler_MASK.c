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
struct MemoryStruct {char* memory; int size; } ;
struct ParserStruct {scalar_t__ ok; struct MemoryStruct characters; } ;
typedef  int /*<<< orphan*/  XML_Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,int) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void *userData, const XML_Char *s, int len)
{
  struct ParserStruct *state = (struct ParserStruct *) userData;
  struct MemoryStruct *mem = &state->characters;

  char *ptr = FUNC2(mem->memory, mem->size + len + 1);
  if(!ptr) {
    /* Out of memory. */
    FUNC0(stderr, "Not enough memory (realloc returned NULL).\n");
    state->ok = 0;
    return;
  }

  mem->memory = ptr;
  FUNC1(&(mem->memory[mem->size]), s, len);
  mem->size += len;
  mem->memory[mem->size] = 0;
}