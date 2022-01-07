
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CASSETTE_STATUS_READ_WRITE ;
 scalar_t__ CASSETTE_status ;
 int CASSETTE_write_protect ;
 int FALSE ;
 int TRUE ;
 int UpdateFlags () ;

int CASSETTE_ToggleWriteProtect(void)
{
 if (CASSETTE_status != CASSETTE_STATUS_READ_WRITE)
  return FALSE;
 CASSETTE_write_protect = !CASSETTE_write_protect;
 UpdateFlags();
 return TRUE;
}
