; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_comp_provision.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_comp_provision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.bt_mesh_elem* }
%struct.bt_mesh_elem = type { i32, i32, i64 }

@dev_primary_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"addr 0x%04x elem_count %u\00", align 1
@dev_comp = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"addr 0x%04x mod_count %u vnd_mod_count %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_comp_provision(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_elem*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @dev_primary_addr, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_comp, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, i64, i32, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_comp, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_comp, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %21, i64 %23
  store %struct.bt_mesh_elem* %24, %struct.bt_mesh_elem** %4, align 8
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  %27 = sext i32 %25 to i64
  %28 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %29 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %31 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %34 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %37 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i64, i32, ...) @BT_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %18
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %12

43:                                               ; preds = %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
