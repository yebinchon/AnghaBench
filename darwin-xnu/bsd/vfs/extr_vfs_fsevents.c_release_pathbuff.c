
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE_ZONE (char*,int ,int ) ;
 int MAXPATHLEN ;
 int M_NAMEI ;

void
release_pathbuff(char *path)
{
 FREE_ZONE(path, MAXPATHLEN, M_NAMEI);
}
