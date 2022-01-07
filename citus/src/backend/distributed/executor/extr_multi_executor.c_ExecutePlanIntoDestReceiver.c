
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int visible; } ;
typedef TYPE_1__* Portal ;
typedef int PlannedStmt ;
typedef int ParamListInfo ;
typedef int DestReceiver ;


 TYPE_1__* CreateNewPortal () ;
 long FETCH_ALL ;
 int GetActiveSnapshot () ;
 int PortalDefineQuery (TYPE_1__*,int *,char*,char*,int ,int *) ;
 int PortalDrop (TYPE_1__*,int) ;
 int PortalRun (TYPE_1__*,long,int,int,int *,int *,int *) ;
 int PortalStart (TYPE_1__*,int ,int,int ) ;
 int list_make1 (int *) ;

void
ExecutePlanIntoDestReceiver(PlannedStmt *queryPlan, ParamListInfo params,
       DestReceiver *dest)
{
 Portal portal = ((void*)0);
 int eflags = 0;
 long count = FETCH_ALL;


 portal = CreateNewPortal();


 portal->visible = 0;

 PortalDefineQuery(portal,
       ((void*)0),
       "",
       "SELECT",
       list_make1(queryPlan),
       ((void*)0));

 PortalStart(portal, params, eflags, GetActiveSnapshot());
 PortalRun(portal, count, 0, 1, dest, dest, ((void*)0));
 PortalDrop(portal, 0);
}
