#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * alias; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ content_encoding ;

/* Variables and functions */
 TYPE_1__** encodings ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static const content_encoding *FUNC1(const char *name, size_t len)
{
  const content_encoding * const *cep;

  for(cep = encodings; *cep; cep++) {
    const content_encoding *ce = *cep;
    if((FUNC0(name, ce->name, len) && !ce->name[len]) ||
       (ce->alias && FUNC0(name, ce->alias, len) && !ce->alias[len]))
      return ce;
  }
  return NULL;
}