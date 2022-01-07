
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_isError (size_t) ;

unsigned ZBUFF_isError(size_t errorCode) { return ERR_isError(errorCode); }
