
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int* png_const_charp ;
typedef int png_charp ;
typedef int chunk_insert ;


 int CHUNK (int,int,int,int) ;
 int bad_parameter_count (int*,int) ;
 int exit (int) ;
 int find_parameters (int*,int ,int *,int) ;
 int fprintf (int ,char*,int*) ;
 int insert_hIST ;
 int insert_iCCP ;
 int insert_iTXt ;
 int insert_sBIT ;
 int insert_sPLT ;
 int insert_tEXt ;
 int insert_zTXt ;
 int * make_insert (int*,int ,int,int *) ;
 int stderr ;

__attribute__((used)) static chunk_insert *
find_insert(png_const_charp what, png_charp param)
{
   png_uint_32 chunk = 0;
   png_charp parameter_list[1024];
   int i, nparams;


   for (i=0; i<4; ++i)
   {
      char ch = what[i];

      if ((ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
         chunk = (chunk << 8) + what[i];

      else
         break;
   }

   if (i < 4 || what[4] != 0)
   {
      fprintf(stderr, "makepng --insert \"%s\": invalid chunk name\n", what);
      exit(1);
   }


   nparams = find_parameters(what, param, parameter_list, 1024);



   switch (chunk)
   {
      case (((105)<<24)+((67)<<16)+((67)<<8)+(80)):
         if (nparams == 2)
            return make_insert(what, insert_iCCP, nparams, parameter_list);
         break;

      case (((116)<<24)+((69)<<16)+((88)<<8)+(116)):
         if (nparams == 2)
            return make_insert(what, insert_tEXt, nparams, parameter_list);
         break;

      case (((122)<<24)+((84)<<16)+((88)<<8)+(116)):
         if (nparams == 2)
            return make_insert(what, insert_zTXt, nparams, parameter_list);
         break;

      case (((105)<<24)+((84)<<16)+((88)<<8)+(116)):
         if (nparams == 4)
            return make_insert(what, insert_iTXt, nparams, parameter_list);
         break;

      case (((104)<<24)+((73)<<16)+((83)<<8)+(84)):
         if (nparams <= 256)
            return make_insert(what, insert_hIST, nparams, parameter_list);
         break;

      case (((115)<<24)+((66)<<16)+((73)<<8)+(84)):
         if (nparams <= 4)
            return make_insert(what, insert_sBIT, nparams, parameter_list);
         break;






      default:
         fprintf(stderr, "makepng --insert \"%s\": unrecognized chunk name\n",
            what);
         exit(1);
   }

   bad_parameter_count(what, nparams);
   return ((void*)0);
}
