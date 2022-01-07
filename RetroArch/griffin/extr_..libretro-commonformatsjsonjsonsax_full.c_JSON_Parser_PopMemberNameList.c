
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int userData; int (* free ) (int ,TYPE_2__*) ;} ;
struct TYPE_10__ {TYPE_2__* pMemberNames; TYPE_1__ memorySuite; } ;
struct TYPE_9__ {struct TYPE_9__* pFirstName; struct TYPE_9__* pNextName; struct TYPE_9__* pAncestor; } ;
typedef TYPE_2__ MemberNames ;
typedef TYPE_2__ MemberName ;
typedef TYPE_4__* JSON_Parser ;


 int stub1 (int ,TYPE_2__*) ;
 int stub2 (int ,TYPE_2__*) ;

__attribute__((used)) static void JSON_Parser_PopMemberNameList(JSON_Parser parser)
{
   MemberNames* pAncestor = parser->pMemberNames->pAncestor;
   while (parser->pMemberNames->pFirstName)
   {
      MemberName* pNextName = parser->pMemberNames->pFirstName->pNextName;
      parser->memorySuite.free(parser->memorySuite.userData, parser->pMemberNames->pFirstName);
      parser->pMemberNames->pFirstName = pNextName;
   }
   parser->memorySuite.free(parser->memorySuite.userData, parser->pMemberNames);
   parser->pMemberNames = pAncestor;
}
