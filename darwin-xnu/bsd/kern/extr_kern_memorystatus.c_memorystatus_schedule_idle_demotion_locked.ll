; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_schedule_idle_demotion_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_schedule_idle_demotion_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@jetsam_aging_policy = common dso_local global i64 0, align 8
@kJetsamAgingPolicyNone = common dso_local global i64 0, align 8
@P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND = common dso_local global i32 0, align 4
@kJetsamAgingPolicyLegacy = common dso_local global i64 0, align 8
@P_DIRTY_AGING_IN_PROGRESS = common dso_local global i32 0, align 4
@system_procs_aging_band = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@applications_aging_band = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [131 x i8] c"memorystatus_schedule_idle_demotion_locked: scheduling demotion to idle band for pid %d (dirty:0x%x, set_state %d, demotions %d).\0A\00", align 1
@memorystatus_scheduled_idle_demotions_sysprocs = common dso_local global i64 0, align 8
@memorystatus_scheduled_idle_demotions_apps = common dso_local global i64 0, align 8
@P_DIRTY_IDLE_EXIT_ENABLED = common dso_local global i32 0, align 4
@memorystatus_sysprocs_idle_delay_time = common dso_local global i32 0, align 4
@memorystatus_apps_idle_delay_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @memorystatus_schedule_idle_demotion_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_schedule_idle_demotion_locked(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* @jetsam_aging_policy, align 8
  %11 = load i64, i64* @kJetsamAgingPolicyNone, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %145

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %145

22:                                               ; preds = %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i64 @isProcessInAgingBands(%struct.TYPE_6__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i64, i64* @jetsam_aging_policy, align 8
  %28 = load i64, i64* @kJetsamAgingPolicyLegacy, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %37 = icmp ne i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %40

40:                                               ; preds = %30, %26
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i64 @isSysProc(%struct.TYPE_6__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i64, i64* @system_procs_aging_band, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %5, align 8
  br label %59

49:                                               ; preds = %44, %40
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i64 @isApp(%struct.TYPE_6__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i64, i64* @applications_aging_band, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %56, %53, %49
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %22
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %79 = load i64, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i64 %77, i64 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = call i64 @isSysProc(%struct.TYPE_6__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %60
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @P_DIRTY_IDLE_EXIT_ENABLED, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  br label %95

95:                                               ; preds = %85, %60
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = call i64 @isSysProc(%struct.TYPE_6__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @memorystatus_sysprocs_idle_delay_time, align 4
  br label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @memorystatus_apps_idle_delay_time, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %7, align 4
  %105 = load i64, i64* %4, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i32, i32* @P_DIRTY_AGING_IN_PROGRESS, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = call i32 (...) @mach_absolute_time()
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %107, %103
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = call i64 @isSysProc(%struct.TYPE_6__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* @FALSE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i64, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  br label %145

133:                                              ; preds = %126, %118
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = call i64 @isApp(%struct.TYPE_6__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @FALSE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i64, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  br label %144

144:                                              ; preds = %141, %137, %133
  br label %145

145:                                              ; preds = %13, %21, %144, %130
  ret void
}

declare dso_local i64 @isProcessInAgingBands(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isSysProc(%struct.TYPE_6__*) #1

declare dso_local i64 @isApp(%struct.TYPE_6__*) #1

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
