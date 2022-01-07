
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 scalar_t__ Devices_GetHostPath (int ) ;
 int Devices_ICBLLZ ;
 int FALSE ;
 int Log_print (char*) ;
 int MEMORY_PutByte (int ,int) ;
 int MEMORY_dGetWordAligned (int ) ;
 char const Util_DIR_SEP_CHAR ;
 int Util_direxists (int ) ;
 char* atari_path ;
 scalar_t__ devbug ;
 int host_path ;

__attribute__((used)) static void Devices_H_ToAbsolutePath(void)
{
 UWORD bufadr;
 const char *p;

 if (devbug)
  Log_print("To Absolute Path Command");

 if (Devices_GetHostPath(FALSE) == 0)
  return;



 if (!Util_direxists(host_path)) {
  CPU_regY = 150;
  CPU_SetN;
  return;
 }

 bufadr = MEMORY_dGetWordAligned(Devices_ICBLLZ);
 if (atari_path[0] != '\0') {
  MEMORY_PutByte(bufadr, '>');
  bufadr++;
  for (p = atari_path; *p != '\0'; p++) {
   if (*p == Util_DIR_SEP_CHAR) {
    if (p[1] == '\0')
     break;
    MEMORY_PutByte(bufadr, '>');
   }
   else
    MEMORY_PutByte(bufadr, (UBYTE) *p);
   bufadr++;
  }
 }
 MEMORY_PutByte(bufadr, 0x00);

 CPU_regY = 1;
 CPU_ClrN;
}
