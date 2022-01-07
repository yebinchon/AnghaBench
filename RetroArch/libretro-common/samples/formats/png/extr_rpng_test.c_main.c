
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ test_rpng (char const*) ;

int main(int argc, char *argv[])
{
   const char *in_path = "/tmp/test.png";

   if (argc > 2)
   {
      fprintf(stderr, "Usage: %s <png file>\n", argv[0]);
      return 1;
   }

   if (argc == 2)
      in_path = argv[1];

   fprintf(stderr, "Doing tests...\n");

   if (test_rpng(in_path) != 0)
   {
      fprintf(stderr, "Test failed.\n");
      return -1;
   }

   return 0;
}
