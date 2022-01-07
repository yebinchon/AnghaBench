
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {void* var; void* comb; void* diffs; } ;
struct pullup_context {int metric_len; } ;


 void* calloc (int ,int) ;

__attribute__((used)) static void pullup_alloc_metrics( struct pullup_context * c,
                                  struct pullup_field * f )
{
    f->diffs = calloc( c->metric_len, sizeof(int) );
    f->comb = calloc( c->metric_len, sizeof(int) );
    f->var = calloc( c->metric_len, sizeof(int) );
}
