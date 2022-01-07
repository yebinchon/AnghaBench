
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DISQUE_VERSION ;
 char* ZMALLOC_LIB ;
 scalar_t__ atoi (int ) ;
 scalar_t__ disqueBuildId () ;
 int disqueGitDirty () ;
 char* disqueGitSHA1 () ;
 int exit (int ) ;
 int printf (char*,char*,char*,int,char*,int,unsigned long long) ;

void version(void) {
    printf("Disque server v=%s sha=%s:%d malloc=%s bits=%d build=%llx\n",
        DISQUE_VERSION,
        disqueGitSHA1(),
        atoi(disqueGitDirty()) > 0,
        ZMALLOC_LIB,
        sizeof(long) == 4 ? 32 : 64,
        (unsigned long long) disqueBuildId());
    exit(0);
}
