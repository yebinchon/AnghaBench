
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wdir; } ;
typedef TYPE_1__ HB_DIR ;


 int _wrewinddir (int ) ;
 void rewinddir (TYPE_1__*) ;

void hb_rewinddir(HB_DIR *dir)
{



    return rewinddir(dir);

}
