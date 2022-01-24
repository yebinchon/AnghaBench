#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  userData; scalar_t__ (* realloc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ;} ;
struct TYPE_11__ {TYPE_2__* pMemberNames; int /*<<< orphan*/  tokenBytesUsed; int /*<<< orphan*/  pTokenBytes; TYPE_1__ memorySuite; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  pBytes; int /*<<< orphan*/  length; struct TYPE_10__* pNextName; } ;
struct TYPE_9__ {TYPE_3__* pFirstName; } ;
typedef  TYPE_3__ MemberName ;
typedef  int /*<<< orphan*/  JSON_Status ;
typedef  TYPE_4__* JSON_Parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_Error_DuplicateObjectMember ; 
 int /*<<< orphan*/  JSON_Error_OutOfMemory ; 
 int /*<<< orphan*/  JSON_Failure ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_Success ; 
 int /*<<< orphan*/  PARSER_TRACK_OBJECT_MEMBERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static JSON_Status FUNC6(JSON_Parser parser)
{
   if (FUNC0(parser->flags, PARSER_TRACK_OBJECT_MEMBERS))
   {
      MemberName* pName;
      for (pName = parser->pMemberNames->pFirstName; pName; pName = pName->pNextName)
      {
         if (pName->length == parser->tokenBytesUsed && !FUNC3(pName->pBytes, parser->pTokenBytes, pName->length))
         {
            FUNC2(parser, JSON_Error_DuplicateObjectMember);
            return JSON_Failure;
         }
      }
      pName = (MemberName*)parser->memorySuite.realloc(parser->memorySuite.userData, NULL, sizeof(MemberName) + parser->tokenBytesUsed - 1);
      if (!pName)
      {
         FUNC1(parser, JSON_Error_OutOfMemory);
         return JSON_Failure;
      }
      pName->pNextName = parser->pMemberNames->pFirstName;
      pName->length = parser->tokenBytesUsed;
      FUNC4(pName->pBytes, parser->pTokenBytes, parser->tokenBytesUsed);
      parser->pMemberNames->pFirstName = pName;
   }
   return JSON_Success;
}