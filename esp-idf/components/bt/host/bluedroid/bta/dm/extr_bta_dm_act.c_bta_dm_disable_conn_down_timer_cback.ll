; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_disable_conn_down_timer_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_disable_conn_down_timer_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BTA_SYS_HW_BLUETOOTH = common dso_local global i32 0, align 4
@bta_dm_sys_hw_cback = common dso_local global i32 0, align 4
@BTA_SYS_API_DISABLE_EVT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bta_dm_disable_conn_down_timer_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_disable_conn_down_timer_cback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @UNUSED(i32* %4)
  %6 = call i32 (...) @bta_dm_disable_pm()
  %7 = load i32, i32* @BTA_SYS_HW_BLUETOOTH, align 4
  %8 = load i32, i32* @bta_dm_sys_hw_cback, align 4
  %9 = call i32 @bta_sys_hw_register(i32 %7, i32 %8)
  %10 = call i64 @osi_malloc(i32 8)
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @BTA_SYS_API_DISABLE_EVT, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @BTA_SYS_HW_BLUETOOTH, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call i32 @bta_sys_sendmsg(%struct.TYPE_6__* %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_dm_cb, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @bta_dm_disable_pm(...) #1

declare dso_local i32 @bta_sys_hw_register(i32, i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
