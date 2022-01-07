
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * info; int * title; } ;
typedef int FILE ;


 int AO_SUCCESS ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (unsigned char*,int,long,int *) ;
 int free (unsigned char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 scalar_t__ malloc (long) ;
 int ssf_fill_info (TYPE_1__*) ;
 TYPE_1__ ssf_info ;
 int ssf_start (unsigned char*,long,int,int) ;
 int upper_case (int ) ;

int load_ssf(char *filename, int m68k_core, int sndcore)
{
 long size;
 FILE *fp = fopen(filename, "rb");
 unsigned char *buffer;
 int ret;
   int i;
   size_t fread_val = 0;

 if (!fp)
  return 0;


 fseek(fp, 0, SEEK_END);
 size = ftell(fp);
 fseek(fp, 0, SEEK_SET);

 buffer = (unsigned char *)malloc(size);

 if (buffer == ((void*)0))
 {
  fclose(fp);
  return 0;
 }

   fread_val = fread(buffer, 1, size, fp);
 fclose(fp);


 if (buffer[0] != 0x50 || buffer[1] != 0x53 ||
  buffer[2] != 0x46 || buffer[3] != 0x11)
 {

  return 0;
 }

 if ((ret = ssf_start(buffer, size, m68k_core, sndcore)) != AO_SUCCESS)
 {
  free(buffer);
  return ret;
 }

   ssf_fill_info(&ssf_info);

   for (i = 0; i < 9; i++)
   {
      upper_case(ssf_info.title[i]);
      upper_case(ssf_info.info[i]);
   }

 return 1;
}
