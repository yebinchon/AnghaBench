; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_is_sco_active.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_is_sco_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@bta_dm_conn_srvcs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTA_ID_AG = common dso_local global i64 0, align 8
@BTA_SYS_SCO_OPEN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"bta_dm_is_sco_active: SCO active: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bta_dm_pm_is_sco_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bta_dm_pm_is_sco_active() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %29, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_dm_conn_srvcs, i32 0, i32 0), align 8
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_dm_conn_srvcs, i32 0, i32 1), align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BTA_ID_AG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_dm_conn_srvcs, i32 0, i32 1), align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTA_SYS_SCO_OPEN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %17, %8
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %4

32:                                               ; preds = %26, %4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
