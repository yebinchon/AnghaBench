
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int rxml_log_document (char*) ;
 int stderr ;

int main(int argc, char *argv[])
{
   if (argc != 2)
   {
      fprintf(stderr, "Usage: %s <path>\n", argv[0]);
      return 1;
   }

   rxml_log_document(argv[1]);
}
