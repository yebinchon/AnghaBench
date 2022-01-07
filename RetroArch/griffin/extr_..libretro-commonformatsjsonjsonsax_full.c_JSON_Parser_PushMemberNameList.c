
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int userData; scalar_t__ (* realloc ) (int ,int *,int) ;} ;
struct TYPE_8__ {TYPE_2__* pMemberNames; TYPE_1__ memorySuite; } ;
struct TYPE_7__ {int * pFirstName; struct TYPE_7__* pAncestor; } ;
typedef TYPE_2__ MemberNames ;
typedef int JSON_Status ;
typedef TYPE_3__* JSON_Parser ;


 int JSON_Error_OutOfMemory ;
 int JSON_Failure ;
 int JSON_Parser_SetErrorAtCodepoint (TYPE_3__*,int ) ;
 int JSON_Success ;
 scalar_t__ stub1 (int ,int *,int) ;

__attribute__((used)) static JSON_Status JSON_Parser_PushMemberNameList(JSON_Parser parser)
{
   MemberNames* pNames = (MemberNames*)parser->memorySuite.realloc(
         parser->memorySuite.userData, ((void*)0), sizeof(MemberNames));

   if (!pNames)
   {
      JSON_Parser_SetErrorAtCodepoint(parser, JSON_Error_OutOfMemory);
      return JSON_Failure;
   }

   pNames->pAncestor = parser->pMemberNames;
   pNames->pFirstName = ((void*)0);
   parser->pMemberNames = pNames;
   return JSON_Success;
}
