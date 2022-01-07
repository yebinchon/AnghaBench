
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x_vector; int y_vector; } ;
typedef TYPE_1__ INLINE_MOTION_VECTOR ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int atoi (char const*) ;
 int fclose (int *) ;
 unsigned char floor (int ) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int,int) ;
 int fputc (unsigned char,int *) ;
 int fread (char*,long,int,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 void* malloc (int) ;
 int memcpy (TYPE_1__*,char*,int) ;
 int printf (char*,...) ;
 int sqrt (int) ;

int main(int argc, const char **argv)
{
   if(argc!=5)
   {
      printf("usage: %s data.imv mbx mby out.pgm\n",argv[0]);
      return 0;
   }
   int mbx=atoi(argv[2]);
   int mby=atoi(argv[3]);




   FILE *f = fopen(argv[1], "rb");
   fseek(f, 0, SEEK_END);
   long fsize = ftell(f);
   fseek(f, 0, SEEK_SET);
   char *buffer = malloc(fsize + 1);
   fread(buffer, fsize, 1, f);
   fclose(f);
   buffer[fsize] = 0;




   if(fsize<(mbx+1)*mby*4)
   {
      printf("File to short!\n");
      return 0;
   }
   INLINE_MOTION_VECTOR *imv;
   imv = malloc((mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR));
   memcpy ( &imv[0], &buffer[0], (mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR) );




   FILE *out = fopen(argv[4], "w");
   fprintf(out,"P5\n%d %d\n255\n",mbx,mby);
   int i,j;
   for(j=0;j<mby; j++)
      for(i=0;i<mbx; i++)
   {
         unsigned char magU=floor(sqrt(imv[i+(mbx+1)*j].x_vector*imv[i+(mbx+1)*j].x_vector+imv[i+(mbx+1)*j].y_vector*imv[i+(mbx+1)*j].y_vector));
         fputc(magU,out);
   }
   fclose(out);
 return 0;

}
