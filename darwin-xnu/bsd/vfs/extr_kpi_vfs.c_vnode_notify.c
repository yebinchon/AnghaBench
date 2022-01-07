
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uint32_t ;
struct vnode_attr {int dummy; } ;


 int NOTE_ATTRIB ;
 int NOTE_WRITE ;
 int VNODE_EVENT_ATTRIB ;
 int VNODE_EVENT_DELETE ;
 int VNODE_EVENT_DIR_CREATED ;
 int VNODE_EVENT_DIR_REMOVED ;
 int VNODE_EVENT_EXTEND ;
 int VNODE_EVENT_FILE_CREATED ;
 int VNODE_EVENT_FILE_REMOVED ;
 int VNODE_EVENT_LINK ;
 int VNODE_EVENT_PERMS ;
 int VNODE_EVENT_RENAME ;
 int VNODE_EVENT_WRITE ;
 int create_fsevent_from_kevent (int ,int,struct vnode_attr*) ;
 int lock_vnode_and_post (int ,int) ;
 scalar_t__ vnode_isdir (int ) ;

int
vnode_notify(vnode_t vp, uint32_t events, struct vnode_attr *vap)
{

 uint32_t knote_mask = (VNODE_EVENT_WRITE | VNODE_EVENT_DELETE | VNODE_EVENT_RENAME
  | VNODE_EVENT_LINK | VNODE_EVENT_EXTEND | VNODE_EVENT_ATTRIB);
 uint32_t dir_contents_mask = (VNODE_EVENT_DIR_CREATED | VNODE_EVENT_FILE_CREATED
   | VNODE_EVENT_DIR_REMOVED | VNODE_EVENT_FILE_REMOVED);
 uint32_t knote_events = (events & knote_mask);


 if (events & VNODE_EVENT_PERMS) {
  knote_events |= NOTE_ATTRIB;
 }


 if ((vnode_isdir(vp)) && (events & dir_contents_mask)) {
  knote_events |= NOTE_WRITE;
 }

 if (knote_events) {
  lock_vnode_and_post(vp, knote_events);





  (void)vap;

 }

 return 0;
}
