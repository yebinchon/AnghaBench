
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
typedef int pin ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int DeviceName; int Id; } ;
typedef TYPE_1__ SECURE_DEVICE ;
typedef int SECURE ;
typedef int LIST ;


 int CloseSec (int *) ;
 int CloseSecSession (int *) ;
 int GetLine (char*,int) ;
 int * GetSecureDeviceList () ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ LoginSec (int *,char*) ;
 int LogoutSec (int *) ;
 int MAX_SIZE ;
 int * OpenSec (scalar_t__) ;
 int OpenSecSession (int *,int ) ;
 int Print (char*,...) ;
 int ReleaseList (int *) ;
 scalar_t__ StrLen (char*) ;
 int TestSecMain (int *) ;
 scalar_t__ ToInt (char*) ;
 int Trim (char*) ;

void TestSec()
{
 UINT i;
 LIST *secure_device_list;
 Print("Secure Device Test Program\n"
  "Copyright (c) SoftEther Corporation. All Rights Reserved.\n\n");


 secure_device_list = GetSecureDeviceList();
 if (secure_device_list != ((void*)0))
 {
  UINT use_device_id;
  char tmp[MAX_SIZE];
  Print("--- Secure Device List ---\n");
  for (i = 0;i < LIST_NUM(secure_device_list);i++)
  {
   SECURE_DEVICE *dev = LIST_DATA(secure_device_list, i);
   Print("%2u - %s\n", dev->Id, dev->DeviceName);
  }
  Print("\n");
  Print("Device ID >");
  GetLine(tmp, sizeof(tmp));
  use_device_id = ToInt(tmp);
  if (use_device_id == 0)
  {
   Print("Canceled.\n");
  }
  else
  {
   SECURE *sec = OpenSec(use_device_id);
   Print("Opening Device...\n");
   if (sec == ((void*)0))
   {
    Print("OpenSec() Failed.\n");
   }
   else
   {
    Print("Opening Session...\n");
    if (OpenSecSession(sec, 0) == 0)
    {
     Print("OpenSecSession() Failed.\n");
    }
    else
    {
     while (1)
     {
      char pin[MAX_SIZE];
      Print("PIN Code >");
      GetLine(pin, sizeof(pin));
      Trim(pin);
      if (StrLen(pin) == 0)
      {
       Print("Canceled.\n");
       break;
      }
      else
      {
       Print("Login...\n");
       if (LoginSec(sec, pin))
       {
        TestSecMain(sec);
        Print("Logout...\n");
        LogoutSec(sec);
        break;
       }
       else
       {
        Print("Login Failed. Please Try Again.\n");
       }
      }
     }
     Print("Closing Session...\n");
     CloseSecSession(sec);
    }
    Print("Closing Device...\n");
    CloseSec(sec);
   }
  }
  ReleaseList(secure_device_list);
 }
 else
 {
  Print("GetSecureDeviceList() Error.\n");
 }
}
