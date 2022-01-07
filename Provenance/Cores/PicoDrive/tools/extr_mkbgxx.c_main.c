
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_file (char*,char*) ;

int main(int argc, char *argv[])
{
 if (argc != 3) return 1;

 do_file(argv[1], "bg40.bin");
 do_file(argv[2], "bg32.bin");

 return 0;
}
