
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global {int skip; } ;
typedef int png_uint_32 ;


 scalar_t__ CRITICAL (int) ;
 int SAFE_TO_COPY (int) ;
 int SKIP_ALL ;
 int SKIP_COLOR ;
 int SKIP_TRANSFORM ;
 int SKIP_UNSAFE ;
 int SKIP_UNUSED ;
__attribute__((used)) static int
skip_chunk_type(const struct global *global, png_uint_32 type)




{

   if (CRITICAL(type))
      return 0;

   switch (type)
   {



      case 129: case 136:
         return 0;




      case 146: case 133:
         if (global->skip >= SKIP_ALL)
            return 1;
         return 0;





      case 148: case 141:
         if (global->skip >= SKIP_COLOR)
            return 1;
         return 0;





      case 149:
         if (global->skip >= SKIP_TRANSFORM)
            return 1;
         return 0;





      case 147: case 145: case 144: case 143: case 142:
      case 140: case 139: case 138: case 137: case 135:
      case 134: case 132: case 131: case 130: case 128:
         if (global->skip >= SKIP_UNUSED)
            return 1;
         return 0;





      default:
         if (SAFE_TO_COPY(type))
         {
            if (global->skip >= SKIP_UNUSED)
               return 1;
         }

         else if (global->skip >= SKIP_UNSAFE)
            return 1;

         return 0;
   }
}
