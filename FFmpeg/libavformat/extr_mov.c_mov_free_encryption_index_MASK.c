#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nb_encrypted_samples; struct TYPE_5__* auxiliary_offsets; struct TYPE_5__* auxiliary_info_sizes; struct TYPE_5__* encrypted_samples; } ;
typedef  TYPE_1__ MOVEncryptionIndex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 

__attribute__((used)) static void FUNC2(MOVEncryptionIndex **index) {
    int i;
    if (!index || !*index) return;
    for (i = 0; i < (*index)->nb_encrypted_samples; i++) {
        FUNC0((*index)->encrypted_samples[i]);
    }
    FUNC1(&(*index)->encrypted_samples);
    FUNC1(&(*index)->auxiliary_info_sizes);
    FUNC1(&(*index)->auxiliary_offsets);
    FUNC1(index);
}