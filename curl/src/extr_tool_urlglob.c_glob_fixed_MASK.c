#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; scalar_t__** elements; scalar_t__ ptr_s; } ;
struct TYPE_7__ {TYPE_1__ Set; } ;
struct TYPE_8__ {int globindex; TYPE_2__ content; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ URLPattern ;
struct TYPE_9__ {size_t size; TYPE_3__* pattern; } ;
typedef  TYPE_4__ URLGlob ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPTSet ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,size_t) ; 

__attribute__((used)) static CURLcode FUNC3(URLGlob *glob, char *fixed, size_t len)
{
  URLPattern *pat = &glob->pattern[glob->size];
  pat->type = UPTSet;
  pat->content.Set.size = 1;
  pat->content.Set.ptr_s = 0;
  pat->globindex = -1;

  pat->content.Set.elements = FUNC1(sizeof(char *));

  if(!pat->content.Set.elements)
    return FUNC0("out of memory", 0, CURLE_OUT_OF_MEMORY);

  pat->content.Set.elements[0] = FUNC1(len + 1);
  if(!pat->content.Set.elements[0])
    return FUNC0("out of memory", 0, CURLE_OUT_OF_MEMORY);

  FUNC2(pat->content.Set.elements[0], fixed, len);
  pat->content.Set.elements[0][len] = 0;

  return CURLE_OK;
}