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
struct patch {int addr; int data; } ;

/* Variables and functions */
 char* hex_chars ; 
 char* FUNC0 (char*,char const) ; 

__attribute__((used)) static void FUNC1(const char *code, struct patch *result)
{
  char *x;
  int i;
  /* 6 digits for address */
  for(i = 0; i < 6; ++i)
    {
      if(!(x = FUNC0(hex_chars, code[i])))
      {
	result->addr = result->data = -1;
	return;
      }
      result->addr = (result->addr << 4) | ((x - hex_chars) >> 1);
    }
  /* 4 digits for data */
  for(i = 6; i < 10; ++i)
    {
      if(!(x = FUNC0(hex_chars, code[i])))
      {
	result->addr = result->data = -1;
	return;
      }
      result->data = (result->data << 4) | ((x - hex_chars) >> 1);
    }
}