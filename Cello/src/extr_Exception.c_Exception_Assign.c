
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct Exception* var ;
struct Exception {int buffers; int active; int depth; int msg; int obj; } ;
typedef int jmp_buf ;


 int EXCEPTION_MAX_DEPTH ;
 int Exception ;
 int assign (int ,int ) ;
 struct Exception* cast (struct Exception*,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void Exception_Assign(var self, var obj) {
  struct Exception* e = self;
  struct Exception* o = cast(obj, Exception);
  e->obj = o->obj;
  assign(e->msg, o->msg);
  e->depth = o->depth;
  e->active = o->active;
  memcpy(e->buffers, o->buffers, sizeof(jmp_buf*) * EXCEPTION_MAX_DEPTH);
}
