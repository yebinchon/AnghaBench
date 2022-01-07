; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmBleEnableBatchScan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmBleEnableBatchScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BTA_DM_API_BLE_ENABLE_BATCH_SCAN_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTA_DmBleEnableBatchScan(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = call i64 @osi_malloc(i32 40)
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %13, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %6
  %18 = load i32, i32* @BTA_DM_API_BLE_ENABLE_BATCH_SCAN_EVT, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %41 = call i32 @bta_sys_sendmsg(%struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %17, %6
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
