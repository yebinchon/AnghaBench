; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_adv.c_adv_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_adv.c_adv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_adv = type { i32 }

@adv_pool = common dso_local global %struct.bt_mesh_adv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_mesh_adv* (i32)* @adv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt_mesh_adv* @adv_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.bt_mesh_adv*, %struct.bt_mesh_adv** @adv_pool, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.bt_mesh_adv, %struct.bt_mesh_adv* %3, i64 %5
  ret %struct.bt_mesh_adv* %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
