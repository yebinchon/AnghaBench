
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tshort ;
typedef int FILE ;


 int Error (char*) ;
 int MAXVERTS ;
 int StoreAliasTriangles () ;
 int bytesread ;
 scalar_t__ feof (int *) ;
 int fread (unsigned short*,int,int,int *) ;
 unsigned short** fverts ;
 scalar_t__ trisfound ;
 int vertsfound ;

int ParseVertexL (FILE *input)
{
 int i, j, startbytesread, numverts;
 unsigned short tshort;

 if (vertsfound)
  Error ("Error: Multiple vertex chunks");

 vertsfound = 1;
 startbytesread = bytesread;

 if (feof(input))
  Error ("Error: unexpected end of file");

 fread(&tshort, sizeof(tshort), 1, input);
 bytesread += sizeof(tshort);
 numverts = (int)tshort;

 if (numverts > MAXVERTS)
  Error ("Error: Too many vertices");

 for (i=0 ; i<numverts ; i++)
 {
  for (j=0 ; j<3 ; j++)
  {
   if (feof(input))
    Error ("Error: unexpected end of file");

   fread(&fverts[i][j], sizeof(float), 1, input);
   bytesread += sizeof(float);
  }
 }

 if (vertsfound && trisfound)
  StoreAliasTriangles ();

 return bytesread - startbytesread;
}
