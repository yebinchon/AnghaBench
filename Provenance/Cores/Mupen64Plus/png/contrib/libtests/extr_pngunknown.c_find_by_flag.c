
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
struct TYPE_2__ {scalar_t__ flag; } ;


 int NINFO ;
 TYPE_1__* chunk_info ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int
find_by_flag(png_uint_32 flag)
{
   int i = NINFO;

   while (--i >= 0) if (chunk_info[i].flag == flag) return i;

   fprintf(stderr, "pngunknown: internal error\n");
   exit(4);
}
