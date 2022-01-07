
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tshort ;
struct TYPE_2__ {int* v; } ;
typedef int FILE ;


 int Error (char*) ;
 int MAXTRIANGLES ;
 int StoreAliasTriangles () ;
 int bytesread ;
 scalar_t__ feof (int *) ;
 int fread (unsigned short*,int,int,int *) ;
 int numtris ;
 TYPE_1__* tris ;
 int trisfound ;
 scalar_t__ vertsfound ;

int ParseFaceL1 (FILE *input)
{

 int i, j, startbytesread;
 unsigned short tshort;

 if (trisfound)
  Error ("Error: Multiple face chunks");

 trisfound = 1;
 startbytesread = bytesread;

 if (feof(input))
  Error ("Error: unexpected end of file");

 fread(&tshort, sizeof(tshort), 1, input);
 bytesread += sizeof(tshort);
 numtris = (int)tshort;

 if (numtris > MAXTRIANGLES)
  Error ("Error: Too many triangles");

 for (i=0 ; i<numtris ; i++)
 {
  for (j=0 ; j<4 ; j++)
  {
   if (feof(input))
    Error ("Error: unexpected end of file");

   fread(&tshort, sizeof(tshort), 1, input);
   bytesread += sizeof(tshort);
   tris[i].v[j] = (int)tshort;
  }
 }

 if (vertsfound && trisfound)
  StoreAliasTriangles ();

 return bytesread - startbytesread;
}
