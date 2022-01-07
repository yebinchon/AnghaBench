
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_name; int p_comm; } ;


 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
process_name(const char *s, proc_t p)
{
       strlcpy(p->p_comm, s, sizeof(p->p_comm));
       strlcpy(p->p_name, s, sizeof(p->p_name));
}
