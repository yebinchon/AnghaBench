
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ AudioData ;


 int av_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void free_temp(AudioData *a){
    av_free(a->data);
    memset(a, 0, sizeof(*a));
}
