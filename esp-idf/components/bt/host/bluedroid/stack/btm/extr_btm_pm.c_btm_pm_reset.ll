; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, i32, i32)* }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_PM_SET_ONLY_ID = common dso_local global i64 0, align 8
@BTM_PM_REG_NOTIF = common dso_local global i32 0, align 4
@BTM_MAX_PM_RECORDS = common dso_local global i32 0, align 4
@BTM_PM_REC_NOT_USED = common dso_local global i32 0, align 4
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@BTM_PM_STS_ERROR = common dso_local global i32 0, align 4
@BTM_DEV_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_pm_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32 (i32, i32, i32, i32)**, align 8
  store i32 (i32, i32, i32, i32)** null, i32 (i32, i32, i32, i32)*** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %4 = load i64, i64* @BTM_PM_SET_ONLY_ID, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 3), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BTM_PM_REG_NOTIF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 3), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %19, align 8
  %21 = bitcast i32 (i32, i32, i32, i32)* %20 to i32 (i32, i32, i32, i32)**
  store i32 (i32, i32, i32, i32)** %21, i32 (i32, i32, i32, i32)*** %2, align 8
  br label %22

22:                                               ; preds = %15, %6, %0
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @BTM_MAX_PM_RECORDS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @BTM_PM_REC_NOT_USED, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 3), align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %23

37:                                               ; preds = %23
  %38 = load i32 (i32, i32, i32, i32)**, i32 (i32, i32, i32, i32)*** %2, align 8
  %39 = icmp ne i32 (i32, i32, i32, i32)** %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %42 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32 (i32, i32, i32, i32)**, i32 (i32, i32, i32, i32)*** %2, align 8
  %46 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 2), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BTM_PM_STS_ERROR, align 4
  %53 = load i32, i32* @BTM_DEV_RESET, align 4
  %54 = call i32 %46(i32 %51, i32 %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %44, %40, %37
  %56 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
