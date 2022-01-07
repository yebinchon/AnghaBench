; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmSetBleScanFilterParams.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmSetBleScanFilterParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BTA_DM_API_BLE_SCAN_FIL_PARAM_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTA_DmSetBleScanFilterParams(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = call i64 @osi_malloc(i32 64)
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %17, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %23 = call i32 @memset(%struct.TYPE_6__* %22, i32 0, i32 64)
  %24 = load i32, i32* @BTA_DM_API_BLE_SCAN_FIL_PARAM_EVT, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %53 = call i32 @bta_sys_sendmsg(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %21, %8
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
