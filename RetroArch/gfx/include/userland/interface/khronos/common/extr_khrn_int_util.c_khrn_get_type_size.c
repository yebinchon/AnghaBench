
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
 int UNREACHABLE () ;

int khrn_get_type_size(int type)
{
   switch ((GLenum)type) {
   case 134:
   case 129:
      return 1;
   case 130:
   case 128:
   case 131:
      return 2;
   case 133:
   case 132:
      return 4;
   default:
      UNREACHABLE();
      return 0;
   }
}
