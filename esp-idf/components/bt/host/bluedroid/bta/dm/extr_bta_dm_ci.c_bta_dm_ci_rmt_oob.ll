; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_ci.c_bta_dm_ci_rmt_oob.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_ci.c_bta_dm_ci_rmt_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BTA_DM_CI_RMT_OOB_EVT = common dso_local global i32 0, align 4
@BT_OCTET16_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_ci_rmt_oob(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i64 @osi_malloc(i32 20)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %9, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %4
  %14 = load i32, i32* @BTA_DM_CI_RMT_OOB_EVT, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bdcpy(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BT_OCTET16_LEN, align 4
  %31 = call i32 @memcpy(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @BT_OCTET16_LEN, align 4
  %37 = call i32 @memcpy(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = call i32 @bta_sys_sendmsg(%struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %13, %4
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
