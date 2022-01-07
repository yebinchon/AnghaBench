
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int seekdir (int *,int ) ;

void rewinddir(DIR* pdir)
{
    seekdir(pdir, 0);
}
