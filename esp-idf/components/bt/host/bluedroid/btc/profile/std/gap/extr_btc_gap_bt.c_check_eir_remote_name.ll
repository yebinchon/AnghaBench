; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_bt.c_check_eir_remote_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_bt.c_check_eir_remote_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BTM_EIR_COMPLETE_LOCAL_NAME_TYPE = common dso_local global i32 0, align 4
@BTM_EIR_SHORTENED_LOCAL_NAME_TYPE = common dso_local global i32 0, align 4
@BD_NAME_LEN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i64*)* @check_eir_remote_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_eir_remote_name(%struct.TYPE_5__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* null, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @BTM_EIR_COMPLETE_LOCAL_NAME_TYPE, align 4
  %21 = call i64* @BTM_CheckEirData(i64 %19, i32 %20, i64* %9)
  store i64* %21, i64** %8, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @BTM_EIR_SHORTENED_LOCAL_NAME_TYPE, align 4
  %30 = call i64* @BTM_CheckEirData(i64 %28, i32 %29, i64* %9)
  store i64* %30, i64** %8, align 8
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i64*, i64** %8, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @BD_NAME_LEN, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @BD_NAME_LEN, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i64*, i64** %6, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i64*, i64** %7, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i64*, i64** %6, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @memcpy(i64* %47, i64* %48, i64 %49)
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %46, %43, %40
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64* @BTM_CheckEirData(i64, i32, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
