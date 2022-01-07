
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLongf ;
typedef int FILE ;


 int MEM_LIMIT ;
 int SEEK_END ;
 int SEEK_SET ;
 int Z_BEST_COMPRESSION ;
 int Z_BUF_ERROR ;
 int Z_OK ;
 scalar_t__ atoi (char*) ;
 int compress2 (void*,int *,void*,int,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (void*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int fwrite (void*,int,int,int *) ;
 void* malloc (int) ;
 int printf (char*,...) ;
 void* realloc (void*,int) ;
 int uncompress (void*,int *,void*,int) ;

int main(int argc, char *argv[])
{
 void *pi, *po = ((void*)0);
 FILE *fi, *fo;
 int ret, si, so;

 if (argc != 4)
 {
  printf("usage: %s <0|1> <infile> <outfile>\n", argv[0]);
  return 1;
 }

 fi = fopen(argv[2], "rb");
 if (fi == ((void*)0)) return 2;

 fseek(fi, 0, SEEK_END);
 si = ftell(fi);
 fseek(fi, 0, SEEK_SET);
 pi = malloc(si);
 if (pi == ((void*)0)) return 3;
 fread(pi, 1, si, fi);
 fclose(fi);

 if (atoi(argv[1]))
 {

  so = si;
  do
  {
   so *= 16;
   if (so > MEM_LIMIT) return 4;
   po = realloc(po, so);
   if (po == ((void*)0)) return 5;
   ret = uncompress(po, (uLongf *) &so, pi, si);
  }
  while (ret == Z_BUF_ERROR);
 }
 else
 {

  so = si + 1024;
  po = malloc(so);
  if (po == ((void*)0)) return 5;
  ret = compress2(po, (uLongf *) &so, pi, si, Z_BEST_COMPRESSION);
 }

 if (ret == Z_OK)
 {
  fo = fopen(argv[3], "wb");
  if (fo == ((void*)0)) return 6;
  fwrite(po, 1, so, fo);
  fclose(fo);
 }

 printf("result %i, size %i -> %i\n", ret, si, so);

 return ret;
}
