
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * info; } ;


 TYPE_1__ ssf_info ;
 int strcpy (char*,int ) ;

void get_ssf_info(int num, char * data_out)
{
   if (!data_out)
      return;

   strcpy(data_out, ssf_info.info[num]);
}
