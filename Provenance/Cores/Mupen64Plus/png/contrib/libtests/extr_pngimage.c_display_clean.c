
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {scalar_t__ results; int original_ip; int original_pp; scalar_t__ chunks; int * original_rows; scalar_t__ original_rowbytes; } ;


 int display_clean_read (struct display*) ;
 int display_clean_write (struct display*) ;
 int png_destroy_read_struct (int *,int *,int *) ;

__attribute__((used)) static void
display_clean(struct display *dp)
{



   display_clean_read(dp);

   dp->original_rowbytes = 0;
   dp->original_rows = ((void*)0);
   dp->chunks = 0;

   png_destroy_read_struct(&dp->original_pp, &dp->original_ip, ((void*)0));

   dp->results = 0;
}
