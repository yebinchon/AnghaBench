
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display {int* value; } ;
typedef size_t png_byte ;
struct TYPE_2__ {int search; } ;


 int MAX_MEM_LEVEL ;
 size_t const OPTIND (struct display*,int ) ;
 int Z_HUFFMAN_ONLY ;
 int Z_RLE ;
 scalar_t__ advance_opt (struct display*,size_t const,int) ;
 int assert (int) ;
 scalar_t__ getallopts_ (struct display*,size_t const,int*,int) ;
 int level ;
 int memLevel ;
 size_t option_index (struct display*,char const*,int ) ;
 TYPE_1__* options ;
 char* range_lo ;
 int record_opt (struct display*,size_t const,char const*) ;
 int strategy ;
 int strlen (char const*) ;
 int windowBits ;

__attribute__((used)) static int
getsearchopts(struct display *dp, const char *opt_str, int *value)

{
   png_byte istrat;
   const png_byte opt = option_index(dp, opt_str, strlen(opt_str));
   int record = options[opt].search;
   const char *entry_name;




   if (getallopts_(dp, opt, value, record))
      return 1;

   else if (!record)
      return 0;


   istrat = OPTIND(dp, strategy);
   entry_name = range_lo;

   if (opt == istrat)
      (void)advance_opt(dp, opt, 0 ), record=0;

   else if (opt == OPTIND(dp, level))
   {

      if (dp->value[istrat] == Z_RLE || dp->value[istrat] == Z_HUFFMAN_ONLY)
         dp->value[opt] = 1;

      else
         (void)advance_opt(dp, opt, 1 ), record=0;
   }

   else if (opt == OPTIND(dp, windowBits))
   {





      if (dp->value[istrat] == Z_HUFFMAN_ONLY)
         dp->value[opt] = 8;

      else if (dp->value[istrat] == Z_RLE)
         dp->value[opt] = 9;

      else
         (void)advance_opt(dp, opt, 1 ), record=0;
   }

   else if (opt == OPTIND(dp, memLevel))
   {



         dp->value[opt] = MAX_MEM_LEVEL;

   }

   else
      assert(0=="reached");

   if (record)
      record_opt(dp, opt, entry_name);


   *value = dp->value[opt];
   return 1;
}
