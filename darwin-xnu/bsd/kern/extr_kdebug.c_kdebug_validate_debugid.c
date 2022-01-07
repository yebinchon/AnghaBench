
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



 int EPERM ;
 int KDBG_EXTRACT_CLASS (int ) ;

__attribute__((used)) static int
kdebug_validate_debugid(uint32_t debugid)
{
 uint8_t debugid_class;

 debugid_class = KDBG_EXTRACT_CLASS(debugid);
 switch (debugid_class) {
  case 128:
   return EPERM;
 }

 return 0;
}
