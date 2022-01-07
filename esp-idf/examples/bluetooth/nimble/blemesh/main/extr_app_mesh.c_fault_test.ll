; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_fault_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blemesh/main/extr_app_mesh.c_fault_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }

@CID_VENDOR = common dso_local global i64 0, align 8
@BLE_HS_EINVAL = common dso_local global i32 0, align 4
@STANDARD_TEST_ID = common dso_local global i64 0, align 8
@TEST_ID = common dso_local global i64 0, align 8
@recent_test_id = common dso_local global i64 0, align 8
@has_reg_fault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_model*, i64, i64)* @fault_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fault_test(%struct.bt_mesh_model* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt_mesh_model*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CID_VENDOR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @BLE_HS_EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %30

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @STANDARD_TEST_ID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @TEST_ID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @BLE_HS_EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %18, %14
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* @recent_test_id, align 8
  store i32 1, i32* @has_reg_fault, align 4
  %27 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %28 = call i32 @bt_mesh_model_elem(%struct.bt_mesh_model* %27)
  %29 = call i32 @bt_mesh_fault_update(i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %22, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @bt_mesh_fault_update(i32) #1

declare dso_local i32 @bt_mesh_model_elem(%struct.bt_mesh_model*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
