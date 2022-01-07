; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_CheckAdvData.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_CheckAdvData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"BTM_CheckAdvData type=0x%02X\00", align 1
@BTM_BLE_CACHE_ADV_DATA_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @BTM_CheckAdvData(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %5, align 8
  store i64* %11, i64** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %9, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = call i32 @STREAM_TO_UINT8(i64 %14, i64* %15)
  br label %17

17:                                               ; preds = %44, %3
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i64*, i64** %8, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = ptrtoint i64* %21 to i64
  %24 = ptrtoint i64* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = load i32, i32* @BTM_BLE_CACHE_ADV_DATA_MAX, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp sle i64 %26, %28
  br label %30

30:                                               ; preds = %20, %17
  %31 = phi i1 [ false, %17 ], [ %29, %20 ]
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = load i64, i64* %10, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = call i32 @STREAM_TO_UINT8(i64 %33, i64* %34)
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64*, i64** %8, align 8
  store i64* %43, i64** %4, align 8
  br label %54

44:                                               ; preds = %32
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %45, 1
  %47 = load i64*, i64** %8, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 %46
  store i64* %48, i64** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = call i32 @STREAM_TO_UINT8(i64 %49, i64* %50)
  br label %17

52:                                               ; preds = %30
  %53 = load i64*, i64** %7, align 8
  store i64 0, i64* %53, align 8
  store i64* null, i64** %4, align 8
  br label %54

54:                                               ; preds = %52, %39
  %55 = load i64*, i64** %4, align 8
  ret i64* %55
}

declare dso_local i32 @BTM_TRACE_API(i8*, i64) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
