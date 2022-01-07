
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int email; int username; int id; } ;
typedef TYPE_1__ Row ;


 int EMAIL_OFFSET ;
 int EMAIL_SIZE ;
 int ID_OFFSET ;
 int ID_SIZE ;
 int USERNAME_OFFSET ;
 int USERNAME_SIZE ;
 int memcpy (int *,void*,int ) ;

void deserialize_row(void* source, Row* destination) {
  memcpy(&(destination->id), source + ID_OFFSET, ID_SIZE);
  memcpy(&(destination->username), source + USERNAME_OFFSET, USERNAME_SIZE);
  memcpy(&(destination->email), source + EMAIL_OFFSET, EMAIL_SIZE);
}
