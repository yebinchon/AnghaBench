; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_sm_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_sm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@btm_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BTM_PM_ST_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"btm_pm_sm_alloc ind:%d st:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_pm_sm_alloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @btm_cb, i32 0, i32 0), align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %5
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 4)
  %9 = load i32, i32* @BTM_PM_ST_ACTIVE, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i64, i64* %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %15)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
