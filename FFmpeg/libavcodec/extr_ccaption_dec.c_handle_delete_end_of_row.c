
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Screen {int dummy; } ;
typedef int CCaptionSubContext ;


 struct Screen* get_writing_screen (int *) ;
 int write_char (int *,struct Screen*,int ) ;

__attribute__((used)) static void handle_delete_end_of_row(CCaptionSubContext *ctx, char hi, char lo)
{
    struct Screen *screen = get_writing_screen(ctx);
    write_char(ctx, screen, 0);
}
