
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;







 int K_KP_DEL ;
 int K_KP_DOWNARROW ;
 int K_KP_END ;
 int K_KP_ENTER ;
 int K_KP_HOME ;
 int K_KP_INS ;
 int K_KP_LEFTARROW ;
 int K_KP_NUMLOCK ;
 int K_KP_PGDN ;
 int K_KP_PGUP ;
 int K_KP_PLUS ;
 int K_KP_RIGHTARROW ;
 int K_KP_SLASH ;
 int K_KP_UPARROW ;






 int qfalse ;
 int qtrue ;
 int* s_scantokey ;

__attribute__((used)) static int MapKey (int key)
{
 int result;
 int modified;
 qboolean is_extended;



 modified = ( key >> 16 ) & 255;

 if ( modified > 127 )
  return 0;

 if ( key & ( 1 << 24 ) )
 {
  is_extended = qtrue;
 }
 else
 {
  is_extended = qfalse;
 }

 result = s_scantokey[modified];

 if ( !is_extended )
 {
  switch ( result )
  {
  case 135:
   return K_KP_HOME;
  case 128:
   return K_KP_UPARROW;
  case 130:
   return K_KP_PGUP;
  case 133:
   return K_KP_LEFTARROW;
  case 129:
   return K_KP_RIGHTARROW;
  case 136:
   return K_KP_END;
  case 137:
   return K_KP_DOWNARROW;
  case 131:
   return K_KP_PGDN;
  case 134:
   return K_KP_INS;
  case 138:
   return K_KP_DEL;
  default:
   return result;
  }
 }
 else
 {
  switch ( result )
  {
  case 132:
   return K_KP_NUMLOCK;
  case 0x0D:
   return K_KP_ENTER;
  case 0x2F:
   return K_KP_SLASH;
  case 0xAF:
   return K_KP_PLUS;
  }
  return result;
 }
}
