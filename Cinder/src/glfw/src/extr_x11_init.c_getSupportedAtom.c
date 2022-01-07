
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef scalar_t__ const Atom ;


 int False ;
 scalar_t__ const None ;
 scalar_t__ XInternAtom (int ,char const*,int ) ;
 TYPE_2__ _glfw ;

__attribute__((used)) static Atom getSupportedAtom(Atom* supportedAtoms,
                             unsigned long atomCount,
                             const char* atomName)
{
    unsigned long i;
    const Atom atom = XInternAtom(_glfw.x11.display, atomName, False);

    for (i = 0; i < atomCount; i++)
    {
        if (supportedAtoms[i] == atom)
            return atom;
    }

    return None;
}
