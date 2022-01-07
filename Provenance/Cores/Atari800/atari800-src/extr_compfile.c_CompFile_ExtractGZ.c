
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gzFile ;
typedef int FILE ;


 int FALSE ;
 int Log_print (char*,...) ;
 int UNCOMPRESS_BUFFER_SIZE ;
 void* Util_malloc (int) ;
 int free (void*) ;
 scalar_t__ fwrite (void*,int,int,int *) ;
 int gzclose (int *) ;
 int * gzopen (char const*,char*) ;
 int gzread (int *,void*,int) ;

int CompFile_ExtractGZ(const char *infilename, FILE *outfp)
{

 Log_print("This executable cannot decompress ZLIB files");
 return FALSE;
}
