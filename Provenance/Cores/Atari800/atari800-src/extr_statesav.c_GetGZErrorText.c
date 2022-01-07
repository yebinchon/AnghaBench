
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GZERROR (int ,scalar_t__*) ;
 int Log_print (char*,...) ;
 int StateFile ;
 scalar_t__ Z_ERRNO ;
 int errno ;
 scalar_t__ nFileError ;
 char* strerror (int ) ;

__attribute__((used)) static void GetGZErrorText(void)
{
 Log_print("State file I/O failed.");
}
