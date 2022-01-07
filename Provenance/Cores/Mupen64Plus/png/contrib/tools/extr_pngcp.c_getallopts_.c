
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct display {int* entry; int* value; } ;
typedef size_t png_byte ;
struct TYPE_4__ {TYPE_1__* values; } ;
struct TYPE_3__ {char* name; } ;


 int advance_opt (struct display*,size_t const,int ) ;
 char const* all ;
 TYPE_2__* options ;
 int record_opt (struct display*,size_t const,char const*) ;

__attribute__((used)) static int
getallopts_(struct display *dp, const png_byte opt, int *value, int record)


{
   if (dp->entry[opt])
   {




      const char *entry_name = options[opt].values[dp->entry[opt]-1].name;

      if (entry_name == all)
         (void)advance_opt(dp, opt, 0 );

      else if (record)
         record_opt(dp, opt, entry_name);

      *value = dp->value[opt];
      return 1;
   }

   else
      return 0;
}
