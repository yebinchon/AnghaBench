; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmRemoveDevice.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmRemoveDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BTA_DM_API_REMOVE_DEVICE_EVT = common dso_local global i32 0, align 4
@BTA_FAILURE = common dso_local global i32 0, align 4
@BTA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTA_DmRemoveDevice(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i64 @osi_malloc(i32 12)
  %8 = inttoptr i64 %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 12)
  %13 = load i32, i32* @BTA_DM_API_REMOVE_DEVICE_EVT, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @bdcpy(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = call i32 @bta_sys_sendmsg(%struct.TYPE_6__* %25)
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @BTA_FAILURE, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %10
  %30 = load i32, i32* @BTA_SUCCESS, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
