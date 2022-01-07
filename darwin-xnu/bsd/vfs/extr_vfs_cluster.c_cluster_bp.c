
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf_t ;


 int cluster_bp_ext (int ,int *,int *) ;

int
cluster_bp(buf_t bp)
{
       return cluster_bp_ext(bp, ((void*)0), ((void*)0));
}
