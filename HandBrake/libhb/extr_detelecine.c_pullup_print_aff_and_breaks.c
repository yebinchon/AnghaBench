
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {int affinity; int breaks; struct pullup_field* next; } ;
struct pullup_context {int dummy; } ;


 int PULLUP_BREAK_LEFT ;
 int PULLUP_BREAK_RIGHT ;
 int hb_log (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void pullup_print_aff_and_breaks(struct pullup_context * c,
                                        struct pullup_field * f )
{
    int i;
    struct pullup_field * f0 = f;
    const char aff_l[] = "+..", aff_r[] = "..+";
    hb_log( "affinity: " );
    for( i = 0; i < 4; i++ )
    {
        printf( "%c%d%c",
                aff_l[1+f->affinity],
                i,
                aff_r[1+f->affinity] );

        f = f->next;
    }
    f = f0;
    printf("\nbreaks:   ");
    for( i = 0; i < 4; i++ )
    {
        printf( "%c%d%c",
                f->breaks & PULLUP_BREAK_LEFT ? '|' : '.',
                i,
                f->breaks & PULLUP_BREAK_RIGHT ? '|' : '.' );

        f = f->next;
    }
    printf("\n");
}
