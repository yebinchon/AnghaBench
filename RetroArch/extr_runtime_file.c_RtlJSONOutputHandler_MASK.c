#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ RtlJSONContext ;
typedef  int /*<<< orphan*/  JSON_Writer_HandlerResult ;
typedef  int /*<<< orphan*/  JSON_Writer ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_Writer_Abort ; 
 int /*<<< orphan*/  JSON_Writer_Continue ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static JSON_Writer_HandlerResult FUNC2(JSON_Writer writer, const char *pBytes, size_t length)
{
   RtlJSONContext *context = (RtlJSONContext*)FUNC0(writer);
   (void)writer; /* unused */
   
   return FUNC1(context->file, pBytes, length) == length ? JSON_Writer_Continue : JSON_Writer_Abort;
}