#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* data; } ;
typedef  TYPE_1__ tool_mime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  TOOLMIME_DATA ; 
 char* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tool_mime *FUNC3(tool_mime *parent, const char *data)
{
  tool_mime *m = NULL;

  data = FUNC1(data);
  if(data) {
    m = FUNC2(parent, TOOLMIME_DATA);
    if(!m)
      FUNC0(data);
    else
      m->data = data;
  }
  return m;
}