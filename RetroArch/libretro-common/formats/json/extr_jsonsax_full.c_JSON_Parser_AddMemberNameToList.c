
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int userData; scalar_t__ (* realloc ) (int ,int *,scalar_t__) ;} ;
struct TYPE_11__ {TYPE_2__* pMemberNames; int tokenBytesUsed; int pTokenBytes; TYPE_1__ memorySuite; int flags; } ;
struct TYPE_10__ {int pBytes; int length; struct TYPE_10__* pNextName; } ;
struct TYPE_9__ {TYPE_3__* pFirstName; } ;
typedef TYPE_3__ MemberName ;
typedef int JSON_Status ;
typedef TYPE_4__* JSON_Parser ;


 scalar_t__ GET_FLAGS (int ,int ) ;
 int JSON_Error_DuplicateObjectMember ;
 int JSON_Error_OutOfMemory ;
 int JSON_Failure ;
 int JSON_Parser_SetErrorAtCodepoint (TYPE_4__*,int ) ;
 int JSON_Parser_SetErrorAtToken (TYPE_4__*,int ) ;
 int JSON_Success ;
 int PARSER_TRACK_OBJECT_MEMBERS ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ stub1 (int ,int *,scalar_t__) ;

__attribute__((used)) static JSON_Status JSON_Parser_AddMemberNameToList(JSON_Parser parser)
{
   if (GET_FLAGS(parser->flags, PARSER_TRACK_OBJECT_MEMBERS))
   {
      MemberName* pName;
      for (pName = parser->pMemberNames->pFirstName; pName; pName = pName->pNextName)
      {
         if (pName->length == parser->tokenBytesUsed && !memcmp(pName->pBytes, parser->pTokenBytes, pName->length))
         {
            JSON_Parser_SetErrorAtToken(parser, JSON_Error_DuplicateObjectMember);
            return JSON_Failure;
         }
      }
      pName = (MemberName*)parser->memorySuite.realloc(parser->memorySuite.userData, ((void*)0), sizeof(MemberName) + parser->tokenBytesUsed - 1);
      if (!pName)
      {
         JSON_Parser_SetErrorAtCodepoint(parser, JSON_Error_OutOfMemory);
         return JSON_Failure;
      }
      pName->pNextName = parser->pMemberNames->pFirstName;
      pName->length = parser->tokenBytesUsed;
      memcpy(pName->pBytes, parser->pTokenBytes, parser->tokenBytesUsed);
      parser->pMemberNames->pFirstName = pName;
   }
   return JSON_Success;
}
