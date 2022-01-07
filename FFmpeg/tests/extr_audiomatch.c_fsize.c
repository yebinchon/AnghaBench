
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;

__attribute__((used)) static int64_t fsize(FILE *f) {
    int64_t end, pos = ftell(f);
    fseek(f, 0, SEEK_END);
    end = ftell(f);
    fseek(f, pos, SEEK_SET);
    return end;
}
