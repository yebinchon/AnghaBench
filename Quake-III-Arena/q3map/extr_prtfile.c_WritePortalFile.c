
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int Error (char*,char*) ;
 char* PORTALFILE ;
 int WriteFaceFile_r (int ) ;
 int WritePortalFile_r (int ) ;
 int _printf (char*,char*) ;
 int fclose (int ) ;
 int fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int num_solidfaces ;
 int num_visclusters ;
 int num_visportals ;
 int pf ;
 int qprintf (char*) ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void WritePortalFile (tree_t *tree)
{
 char filename[1024];

 qprintf ("--- WritePortalFile ---\n");


 sprintf (filename, "%s.prt", source);
 _printf ("writing %s\n", filename);
 pf = fopen (filename, "w");
 if (!pf)
  Error ("Error opening %s", filename);

 fprintf (pf, "%s\n", PORTALFILE);
 fprintf (pf, "%i\n", num_visclusters);
 fprintf (pf, "%i\n", num_visportals);
 fprintf (pf, "%i\n", num_solidfaces);

 WritePortalFile_r(tree->headnode);
 WriteFaceFile_r(tree->headnode);

 fclose (pf);
}
