; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_bt_mesh_cfg_mod_sub_del.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_bt_mesh_cfg_mod_sub_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_msg_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OP_MOD_SUB_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_cfg_mod_sub_del(%struct.bt_mesh_msg_ctx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bt_mesh_msg_ctx* %0, %struct.bt_mesh_msg_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %7, align 8
  %13 = icmp ne %struct.bt_mesh_msg_ctx* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %30

22:                                               ; preds = %14
  %23 = load i32, i32* @OP_MOD_SUB_DEL, align 4
  %24 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mod_sub(i32 %23, %struct.bt_mesh_msg_ctx* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @mod_sub(i32, %struct.bt_mesh_msg_ctx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
