
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ Result ;


 scalar_t__ IPC_Desc_StaticBuffer (scalar_t__,int ) ;
 scalar_t__ IPC_MakeHeader (int,int ,int) ;
 scalar_t__ R_SUCCEEDED (scalar_t__) ;
 scalar_t__* getThreadCommandBuffer () ;
 int hbldrHandle ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ svcSendSyncRequest (int ) ;

__attribute__((used)) static Result HBLDR_SetTarget(const char* path)
{
 u32 pathLen = strlen(path) + 1;
 u32* cmdbuf = getThreadCommandBuffer();

 cmdbuf[0] = IPC_MakeHeader(2, 0, 2);
 cmdbuf[1] = IPC_Desc_StaticBuffer(pathLen, 0);
 cmdbuf[2] = (u32)path;

 Result rc = svcSendSyncRequest(hbldrHandle);
 if (R_SUCCEEDED(rc)) rc = cmdbuf[1];
 return rc;
}
