
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* pStart; void* pEnd; } ;
struct TYPE_5__ {TYPE_1__ lookaside; } ;
typedef TYPE_2__ sqlite3 ;



__attribute__((used)) static int isLookaside(sqlite3 *db, void *p){
  return p && p>=db->lookaside.pStart && p<db->lookaside.pEnd;
}
