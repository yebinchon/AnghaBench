
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppgrp_nice_args {int* errorp; int* foundp; int prio; int curp; } ;
typedef int proc_t ;


 int PROC_RETURNED ;
 int donice (int ,int ,int ) ;

__attribute__((used)) static int
ppgrp_donice_callback(proc_t p, void * arg)
{
 int error;
 struct ppgrp_nice_args * pun = (struct ppgrp_nice_args *)arg;
 int n;

 error = donice(pun->curp, p, pun->prio);
 if (pun->errorp != ((void*)0))
  *pun->errorp = error;
 if (pun->foundp!= ((void*)0)) {
  n = *pun->foundp;
  *pun->foundp = n+1;
 }

 return(PROC_RETURNED);
}
