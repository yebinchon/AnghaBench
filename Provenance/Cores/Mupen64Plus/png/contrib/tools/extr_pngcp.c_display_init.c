
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {char* operation; char* filename; char* output_file; int min_windowBits; scalar_t__ text_stashed; scalar_t__ num_text; int * text_ptr; int * write_pp; int * ip; int * read_pp; int * fp; int options; } ;


 int WARNINGS ;
 int memset (struct display*,int ,int) ;

__attribute__((used)) static void
display_init(struct display *dp)




{
   memset(dp, 0, sizeof *dp);
   dp->operation = "internal error";
   dp->filename = "command line";
   dp->output_file = "no output file";
   dp->options = WARNINGS;
   dp->fp = ((void*)0);
   dp->read_pp = ((void*)0);
   dp->ip = ((void*)0);
   dp->write_pp = ((void*)0);
   dp->min_windowBits = -1;





}
