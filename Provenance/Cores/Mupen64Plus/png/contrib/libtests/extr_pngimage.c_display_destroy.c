
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int original_file; int written_file; } ;


 int buffer_destroy (int *) ;

__attribute__((used)) static void
display_destroy(struct display *dp)
{





   buffer_destroy(&dp->original_file);
}
