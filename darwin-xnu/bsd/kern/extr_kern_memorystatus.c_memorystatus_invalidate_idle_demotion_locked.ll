; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_invalidate_idle_demotion_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_invalidate_idle_demotion_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@system_procs_aging_band = common dso_local global i64 0, align 8
@applications_aging_band = common dso_local global i64 0, align 8
@P_DIRTY_AGING_IN_PROGRESS = common dso_local global i32 0, align 4
@jetsam_aging_policy = common dso_local global i64 0, align 8
@kJetsamAgingPolicyLegacy = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [120 x i8] c"memorystatus_invalidate_idle_demotion(): invalidating demotion to idle band for pid %d (clear_state %d, demotions %d).\0A\00", align 1
@memorystatus_scheduled_idle_demotions_sysprocs = common dso_local global i64 0, align 8
@memorystatus_scheduled_idle_demotions_apps = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @memorystatus_invalidate_idle_demotion_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @system_procs_aging_band, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @applications_aging_band, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %141

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %141

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i64 @isProcessInAgingBands(%struct.TYPE_6__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %23
  %28 = load i64, i64* @jetsam_aging_policy, align 8
  %29 = load i64, i64* @kJetsamAgingPolicyLegacy, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %41

41:                                               ; preds = %31, %27
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = call i64 @isSysProc(%struct.TYPE_6__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i64, i64* @system_procs_aging_band, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @system_procs_aging_band, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @assert(i32 %58)
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %5, align 8
  br label %82

61:                                               ; preds = %45, %41
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = call i64 @isApp(%struct.TYPE_6__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i64, i64* @applications_aging_band, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @applications_aging_band, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @assert(i32 %78)
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %68, %65, %61
  br label %82

82:                                               ; preds = %81, %48
  br label %83

83:                                               ; preds = %82, %23
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %89 = load i64, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %87, i64 %90)
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %83
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %94, %83
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = call i64 @isSysProc(%struct.TYPE_6__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @TRUE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i64, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %114 = load i64, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %115 = icmp sge i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  br label %134

118:                                              ; preds = %107, %103
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = call i64 @isApp(%struct.TYPE_6__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @TRUE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %129 = load i64, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %130 = icmp sge i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  br label %133

133:                                              ; preds = %126, %122, %118
  br label %134

134:                                              ; preds = %133, %111
  %135 = load i64, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %136 = load i64, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %137 = add nsw i64 %135, %136
  %138 = icmp sge i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  br label %141

141:                                              ; preds = %134, %22, %14
  ret void
}

declare dso_local i64 @isProcessInAgingBands(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isSysProc(%struct.TYPE_6__*) #1

declare dso_local i64 @isApp(%struct.TYPE_6__*) #1

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
