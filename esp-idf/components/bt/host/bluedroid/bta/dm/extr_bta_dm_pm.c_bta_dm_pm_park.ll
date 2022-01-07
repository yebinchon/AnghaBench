; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_park.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_park.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@BTM_PM_STS_ACTIVE = common dso_local global i64 0, align 8
@BTM_PM_MD_PARK = common dso_local global i64 0, align 8
@bta_dm_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@p_bta_dm_pm_md = common dso_local global i32* null, align 8
@BTA_DM_PM_PARK_IDX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bta_dm_pm_park to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bta_dm_pm_park(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @BTM_PM_STS_ACTIVE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @BTM_ReadPowerMode(i32 %5, i64* %3)
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @BTM_PM_MD_PARK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_cb, i32 0, i32 0), align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32*, i32** @p_bta_dm_pm_md, align 8
  %14 = load i64, i64* @BTA_DM_PM_PARK_IDX, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @BTM_SetPowerMode(i32 %11, i32 %12, i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @TRUE, align 4
  ret i32 %18
}

declare dso_local i32 @BTM_ReadPowerMode(i32, i64*) #1

declare dso_local i32 @BTM_SetPowerMode(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
