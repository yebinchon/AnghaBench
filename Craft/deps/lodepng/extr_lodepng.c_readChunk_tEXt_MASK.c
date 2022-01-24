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
typedef  int /*<<< orphan*/  LodePNGInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static unsigned FUNC4(LodePNGInfo* info, const unsigned char* data, size_t chunkLength)
{
  unsigned error = 0;
  char *key = 0, *str = 0;
  unsigned i;

  while(!error) /*not really a while loop, only used to break on error*/
  {
    unsigned length, string2_begin;

    length = 0;
    while(length < chunkLength && data[length] != 0) length++;
    /*even though it's not allowed by the standard, no error is thrown if
    there's no null termination char, if the text is empty*/
    if(length < 1 || length > 79) FUNC0(error, 89); /*keyword too short or long*/

    key = (char*)FUNC3(length + 1);
    if(!key) FUNC0(error, 83); /*alloc fail*/

    key[length] = 0;
    for(i = 0; i < length; i++) key[i] = data[i];

    string2_begin = length + 1; /*skip keyword null terminator*/

    length = chunkLength < string2_begin ? 0 : chunkLength - string2_begin;
    str = (char*)FUNC3(length + 1);
    if(!str) FUNC0(error, 83); /*alloc fail*/

    str[length] = 0;
    for(i = 0; i < length; i++) str[i] = data[string2_begin + i];

    error = FUNC1(info, key, str);

    break;
  }

  FUNC2(key);
  FUNC2(str);

  return error;
}