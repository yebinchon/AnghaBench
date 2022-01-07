
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n; char* buff; char c; int f; } ;
typedef TYPE_1__ RN ;


 scalar_t__ L_MAXLENNUM ;
 char l_getc (int ) ;

__attribute__((used)) static int nextc (RN *rn) {
  if (rn->n >= L_MAXLENNUM) {
    rn->buff[0] = '\0';
    return 0;
  }
  else {
    rn->buff[rn->n++] = rn->c;
    rn->c = l_getc(rn->f);
    return 1;
  }
}
