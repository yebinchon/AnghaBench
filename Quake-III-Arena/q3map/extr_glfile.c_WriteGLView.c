
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
typedef int FILE ;


 int Error (char*,char*) ;
 int WriteGLView_r (int ,int *) ;
 int _printf (char*,char*) ;
 char* c_glfaces ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 char* outbase ;
 int sprintf (char*,char*,char*,char*) ;

void WriteGLView (tree_t *tree, char *source)
{
 char name[1024];
 FILE *glview;

 c_glfaces = 0;
 sprintf (name, "%s%s.gl",outbase, source);
 _printf ("Writing %s\n", name);

 glview = fopen (name, "w");
 if (!glview)
  Error ("Couldn't open %s", name);
 WriteGLView_r (tree->headnode, glview);
 fclose (glview);

 _printf ("%5i c_glfaces\n", c_glfaces);
}
