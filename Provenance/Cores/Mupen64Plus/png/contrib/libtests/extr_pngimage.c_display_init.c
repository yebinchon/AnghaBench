
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int written_file; int * write_pp; int original_file; int * read_ip; int * read_pp; int * original_rows; int * original_ip; int * original_pp; int * operation; int * filename; int options; } ;


 int WARNINGS ;
 int buffer_init (int *) ;
 int memset (struct display*,int ,int) ;

__attribute__((used)) static void
display_init(struct display *dp)




{
   memset(dp, 0, sizeof *dp);
   dp->options = WARNINGS;
   dp->filename = ((void*)0);
   dp->operation = ((void*)0);
   dp->original_pp = ((void*)0);
   dp->original_ip = ((void*)0);
   dp->original_rows = ((void*)0);
   dp->read_pp = ((void*)0);
   dp->read_ip = ((void*)0);
   buffer_init(&dp->original_file);





}
