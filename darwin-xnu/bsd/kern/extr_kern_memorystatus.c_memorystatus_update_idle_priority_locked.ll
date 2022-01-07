; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_idle_priority_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_update_idle_priority_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"memorystatus_update_idle_priority_locked(): pid %d dirty 0x%X\0A\00", align 1
@P_DIRTY_IDLE_EXIT_ENABLED = common dso_local global i32 0, align 4
@P_DIRTY_IS_DIRTY = common dso_local global i32 0, align 4
@P_DIRTY_AGING_IN_PROGRESS = common dso_local global i32 0, align 4
@system_procs_aging_band = common dso_local global i64 0, align 8
@JETSAM_PRIORITY_IDLE = common dso_local global i64 0, align 8
@jetsam_aging_policy = common dso_local global i64 0, align 8
@kJetsamAgingPolicyLegacy = common dso_local global i64 0, align 8
@P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND = common dso_local global i32 0, align 4
@JETSAM_PRIORITY_ELEVATED_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @memorystatus_update_idle_priority_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_update_idle_priority_locked(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @isSysProc(%struct.TYPE_5__* %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %18 = load i32, i32* @P_DIRTY_IS_DIRTY, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @system_procs_aging_band, align 8
  br label %34

32:                                               ; preds = %23
  %33 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  store i64 %35, i64* %3, align 8
  br label %40

36:                                               ; preds = %1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %34
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load i64, i64* @jetsam_aging_policy, align 8
  %48 = load i64, i64* @kJetsamAgingPolicyLegacy, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i64, i64* @JETSAM_PRIORITY_ELEVATED_INACTIVE, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %54
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_5__* %64, i64 %65, i32 0, i32 1)
  br label %71

67:                                               ; preds = %50, %46
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @memorystatus_update_priority_locked(%struct.TYPE_5__* %68, i64 %69, i32 0, i32 0)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %40
  ret void
}

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isSysProc(%struct.TYPE_5__*) #1

declare dso_local i32 @memorystatus_update_priority_locked(%struct.TYPE_5__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
