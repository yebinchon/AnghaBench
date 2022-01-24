#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int residue_count; int codebook_count; int floor_count; int mapping_count; TYPE_6__* mappings; TYPE_6__* floors; TYPE_6__* codebooks; int /*<<< orphan*/ * mdct; TYPE_6__* modes; TYPE_6__* residues; TYPE_6__* fdsp; TYPE_6__* saved; TYPE_6__* channel_residues; } ;
typedef  TYPE_4__ vorbis_context ;
struct TYPE_8__ {TYPE_6__* list; } ;
struct TYPE_7__ {TYPE_6__* lsp; TYPE_6__* book_list; TYPE_6__** map; } ;
struct TYPE_9__ {TYPE_2__ t1; TYPE_1__ t0; } ;
struct TYPE_11__ {scalar_t__ floor_type; struct TYPE_11__* mux; struct TYPE_11__* angle; struct TYPE_11__* magnitude; TYPE_3__ data; int /*<<< orphan*/  vlc; struct TYPE_11__* codevectors; struct TYPE_11__* classifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(vorbis_context *vc)
{
    int i;

    FUNC0(&vc->channel_residues);
    FUNC0(&vc->saved);
    FUNC0(&vc->fdsp);

    if (vc->residues)
        for (i = 0; i < vc->residue_count; i++)
            FUNC0(&vc->residues[i].classifs);
    FUNC0(&vc->residues);
    FUNC0(&vc->modes);

    FUNC2(&vc->mdct[0]);
    FUNC2(&vc->mdct[1]);

    if (vc->codebooks)
        for (i = 0; i < vc->codebook_count; ++i) {
            FUNC0(&vc->codebooks[i].codevectors);
            FUNC1(&vc->codebooks[i].vlc);
        }
    FUNC0(&vc->codebooks);

    if (vc->floors)
        for (i = 0; i < vc->floor_count; ++i) {
            if (vc->floors[i].floor_type == 0) {
                FUNC0(&vc->floors[i].data.t0.map[0]);
                FUNC0(&vc->floors[i].data.t0.map[1]);
                FUNC0(&vc->floors[i].data.t0.book_list);
                FUNC0(&vc->floors[i].data.t0.lsp);
            } else {
                FUNC0(&vc->floors[i].data.t1.list);
            }
        }
    FUNC0(&vc->floors);

    if (vc->mappings)
        for (i = 0; i < vc->mapping_count; ++i) {
            FUNC0(&vc->mappings[i].magnitude);
            FUNC0(&vc->mappings[i].angle);
            FUNC0(&vc->mappings[i].mux);
        }
    FUNC0(&vc->mappings);
}