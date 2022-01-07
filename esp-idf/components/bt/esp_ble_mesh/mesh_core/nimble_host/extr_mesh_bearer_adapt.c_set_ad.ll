; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_set_ad.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_set_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_adv_data = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_adv_data*, i64, i64*, i64*)* @set_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ad(%struct.bt_mesh_adv_data* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.bt_mesh_adv_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.bt_mesh_adv_data* %0, %struct.bt_mesh_adv_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %65, %4
  %11 = load i32, i32* %9, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  %16 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %16, i64 %18
  %20 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  %23 = load i64*, i64** %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 %22, i64* %27, align 8
  %28 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %28, i64 %30
  %32 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %33, i64* %38, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %43, i64 %45
  %47 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %49, i64 %51
  %53 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memcpy(i64* %42, i32 %48, i64 %54)
  %56 = load %struct.bt_mesh_adv_data*, %struct.bt_mesh_adv_data** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %56, i64 %58
  %60 = getelementptr inbounds %struct.bt_mesh_adv_data, %struct.bt_mesh_adv_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %61
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %15
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %10

68:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @memcpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
