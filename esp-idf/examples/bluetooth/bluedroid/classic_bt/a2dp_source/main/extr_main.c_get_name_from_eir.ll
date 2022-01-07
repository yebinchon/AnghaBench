; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_get_name_from_eir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_get_name_from_eir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BT_EIR_TYPE_CMPL_LOCAL_NAME = common dso_local global i32 0, align 4
@ESP_BT_EIR_TYPE_SHORT_LOCAL_NAME = common dso_local global i32 0, align 4
@ESP_BT_GAP_MAX_BDNAME_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*)* @get_name_from_eir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name_from_eir(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* null, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = load i32, i32* @ESP_BT_EIR_TYPE_CMPL_LOCAL_NAME, align 4
  %16 = call i64* @esp_bt_gap_resolve_eir_data(i64* %14, i32 %15, i64* %9)
  store i64* %16, i64** %8, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* @ESP_BT_EIR_TYPE_SHORT_LOCAL_NAME, align 4
  %22 = call i64* @esp_bt_gap_resolve_eir_data(i64* %20, i32 %21, i64* %9)
  store i64* %22, i64** %8, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @ESP_BT_GAP_MAX_BDNAME_LEN, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @ESP_BT_GAP_MAX_BDNAME_LEN, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64*, i64** %6, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i64*, i64** %6, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @memcpy(i64* %36, i64* %37, i64 %38)
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i64*, i64** %7, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  store i32 1, i32* %4, align 4
  br label %51

50:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64* @esp_bt_gap_resolve_eir_data(i64*, i32, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
