
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARQRequest ;


 int LWP_ThreadBroadcast (int ) ;
 int __ARQSyncQueue ;

__attribute__((used)) static void __ARQCallbackSync(ARQRequest *req)
{
 LWP_ThreadBroadcast(__ARQSyncQueue);
}
