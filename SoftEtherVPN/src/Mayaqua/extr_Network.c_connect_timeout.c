
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zero ;
typedef int tmp ;
struct sockaddr {int dummy; } ;
typedef int WSAEVENT ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_2__ {int OsType; } ;
typedef scalar_t__ SOCKET ;


 int CloseHandle (int ) ;
 int CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int FD_CONNECT ;
 int FIONBIO ;
 TYPE_1__* GetOsInfo () ;
 scalar_t__ INVALID_SOCKET ;
 int OS_IS_WINDOWS_NT (int ) ;
 int SleepThread (int) ;
 int TIMEOUT_TCP_PORT_CHECK ;
 scalar_t__ Tick64 () ;
 scalar_t__ WAIT_OBJECT_0 ;
 int WSAEALREADY ;
 int WSAEINVAL ;
 int WSAEISCONN ;
 int WSAEWOULDBLOCK ;
 int WSAEventSelect (scalar_t__,int ,int ) ;
 int WSAGetLastError () ;
 int WSAIoctl (scalar_t__,int ,int *,int,int *,int,int *,int *,int *) ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int connect (scalar_t__,struct sockaddr*,int) ;

int connect_timeout(SOCKET s, struct sockaddr *addr, int size, int timeout, bool *cancel_flag)
{
 UINT64 start_time;
 bool ok = 0;
 bool timeouted = 0;
 WSAEVENT hEvent;
 UINT zero = 0;
 UINT tmp = 0;
 UINT ret_size = 0;
 bool is_nt = 0;

 if (s == INVALID_SOCKET || addr == ((void*)0))
 {
  return -1;
 }
 if (timeout == 0)
 {
  timeout = TIMEOUT_TCP_PORT_CHECK;
 }

 is_nt = OS_IS_WINDOWS_NT(GetOsInfo()->OsType);


 hEvent = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));


 WSAEventSelect(s, hEvent, FD_CONNECT);

 start_time = Tick64();

 while (1)
 {
  int ret;

  ret = connect(s, addr, size);

  if (ret == 0)
  {
   ok = 1;
   break;
  }
  else
  {
   int err = WSAGetLastError();


   if (timeouted && ((err == WSAEALREADY) || (err == WSAEWOULDBLOCK && !is_nt)))
   {

    ok = 0;
    break;
   }
   if (*cancel_flag)
   {

    ok = 0;
    break;
   }
   if (err == WSAEISCONN || (err == WSAEINVAL && is_nt))
   {
    ok = 1;
    break;
   }
   if (((start_time + (UINT64)timeout) <= Tick64()) || (err != WSAEWOULDBLOCK && err != WSAEALREADY && (is_nt || err != WSAEINVAL)))
   {

    break;
   }
   else
   {
    SleepThread(10);

    if (WaitForSingleObject(hEvent, 100) == WAIT_OBJECT_0)
    {
     timeouted = 1;
    }
   }
  }
 }


 WSAEventSelect(s, hEvent, 0);


 WSAIoctl(s, FIONBIO, &zero, sizeof(zero), &tmp, sizeof(tmp), &ret_size, ((void*)0), ((void*)0));


 CloseHandle(hEvent);

 if (ok)
 {
  return 0;
 }
 else
 {
  return -1;
 }
}
