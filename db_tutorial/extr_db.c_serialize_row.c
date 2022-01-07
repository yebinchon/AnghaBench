
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
 int memcpy (void*,int *,int ) ;

void serialize_row(Row* source, void* destination) {
  memcpy(destination + ID_OFFSET, &(source->id), ID_SIZE);
  memcpy(destination + USERNAME_OFFSET, &(source->username), USERNAME_SIZE);
  memcpy(destination + EMAIL_OFFSET, &(source->email), EMAIL_SIZE);
}
