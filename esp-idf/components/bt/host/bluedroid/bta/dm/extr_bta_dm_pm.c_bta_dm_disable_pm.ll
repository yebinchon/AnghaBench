; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_disable_pm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_disable_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@BTM_PM_DEREG = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTA_DM_NUM_PM_TIMER = common dso_local global i32 0, align 4
@BTA_DM_PM_MODE_TIMER_MAX = common dso_local global i32 0, align 4
@BTA_DM_PM_NO_ACTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_disable_pm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @BTM_PM_DEREG, align 4
  %4 = call i32 @BTM_PmRegister(i32 %3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_dm_cb, i32 0, i32 1), i32* null)
  %5 = call i32 @bta_sys_pm_register(i32* null)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %36, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @BTA_DM_NUM_PM_TIMER, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @BTA_DM_PM_MODE_TIMER_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_dm_cb, i32 0, i32 0), align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @bta_dm_pm_stop_timer_by_index(%struct.TYPE_3__* %19, i32 %20)
  %22 = load i32, i32* @BTA_DM_PM_NO_ACTION, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_dm_cb, i32 0, i32 0), align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %22, i32* %31, align 4
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %11

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %6

39:                                               ; preds = %6
  ret void
}

declare dso_local i32 @BTM_PmRegister(i32, i32*, i32*) #1

declare dso_local i32 @bta_sys_pm_register(i32*) #1

declare dso_local i32 @bta_dm_pm_stop_timer_by_index(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
