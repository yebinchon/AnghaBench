#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_partition_type_t ;
struct TYPE_3__ {char* size; int /*<<< orphan*/  address; int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_partition_subtype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(esp_partition_type_t type, esp_partition_subtype_t subtype, const char* name)
{
    FUNC0(TAG, "Find partition with type %s, subtype %s, label %s...", FUNC3(type), FUNC2(subtype),
                    name == NULL ? "NULL (unspecified)" : name);
    const esp_partition_t * part  = FUNC1(type, subtype, name); 
    FUNC0(TAG, "\tfound partition '%s' at offset 0x%x with size 0x%x", part->label, part->address, part->size); 
}