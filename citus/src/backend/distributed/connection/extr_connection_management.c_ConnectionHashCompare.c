
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; int database; int user; int hostname; } ;
typedef int Size ;
typedef TYPE_1__ ConnectionHashKey ;


 int MAX_NODE_LENGTH ;
 int NAMEDATALEN ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int
ConnectionHashCompare(const void *a, const void *b, Size keysize)
{
 ConnectionHashKey *ca = (ConnectionHashKey *) a;
 ConnectionHashKey *cb = (ConnectionHashKey *) b;

 if (strncmp(ca->hostname, cb->hostname, MAX_NODE_LENGTH) != 0 ||
  ca->port != cb->port ||
  strncmp(ca->user, cb->user, NAMEDATALEN) != 0 ||
  strncmp(ca->database, cb->database, NAMEDATALEN) != 0)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}
