#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ucvector ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char) ; 

__attribute__((used)) static unsigned FUNC4(ucvector* out, const char* keyword, const char* textstring)
{
  unsigned error = 0;
  size_t i;
  ucvector text;
  FUNC2(&text);
  for(i = 0; keyword[i] != 0; i++) FUNC3(&text, (unsigned char)keyword[i]);
  if(i < 1 || i > 79) return 89; /*error: invalid keyword size*/
  FUNC3(&text, 0); /*0 termination char*/
  for(i = 0; textstring[i] != 0; i++) FUNC3(&text, (unsigned char)textstring[i]);
  error = FUNC0(out, "tEXt", text.data, text.size);
  FUNC1(&text);

  return error;
}