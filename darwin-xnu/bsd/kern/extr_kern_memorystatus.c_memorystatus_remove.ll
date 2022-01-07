; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"memorystatus_list_remove: removing pid %d\0A\00", align 1
@P_MEMSTAT_INTERNAL = common dso_local global i32 0, align 4
@memstat_bucket = common dso_local global %struct.TYPE_10__* null, align 8
@system_procs_aging_band = common dso_local global i64 0, align 8
@memorystatus_scheduled_idle_demotions_sysprocs = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@applications_aging_band = common dso_local global i64 0, align 8
@memorystatus_scheduled_idle_demotions_apps = common dso_local global i64 0, align 8
@JETSAM_PRIORITY_IDLE = common dso_local global i64 0, align 8
@p_memstat_list = common dso_local global i32 0, align 4
@memorystatus_list_count = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@P_MEMSTAT_FROZEN = common dso_local global i32 0, align 4
@P_MEMSTAT_REFREEZE_ELIGIBLE = common dso_local global i32 0, align 4
@P_MEMSTAT_SUSPENDED = common dso_local global i32 0, align 4
@memorystatus_frozen_count = common dso_local global i32 0, align 4
@memorystatus_frozen_shared_mb = common dso_local global i32 0, align 4
@memorystatus_refreeze_eligible_count = common dso_local global i32 0, align 4
@memorystatus_suspended_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_remove(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @proc_list_lock()
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @P_MEMSTAT_INTERNAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @memstat_bucket, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %31
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call i64 @isSysProc(%struct.TYPE_9__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %18
  %37 = load i64, i64* @system_procs_aging_band, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @system_procs_aging_band, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @memorystatus_scheduled_idle_demotions_sysprocs, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %7, align 8
  br label %77

54:                                               ; preds = %39, %36, %18
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call i64 @isApp(%struct.TYPE_9__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i64, i64* @applications_aging_band, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @applications_aging_band, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @memorystatus_scheduled_idle_demotions_apps, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i64, i64* @TRUE, align 8
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %67, %61, %58, %54
  br label %77

77:                                               ; preds = %76, %45
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = call i64 (...) @mach_absolute_time()
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %90, %83
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = load i32, i32* @p_memstat_list, align 4
  %104 = call i32 @TAILQ_REMOVE(i32* %101, %struct.TYPE_9__* %102, i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %106, align 8
  %109 = load i32, i32* @memorystatus_list_count, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* @memorystatus_list_count, align 4
  %111 = load i64, i64* %7, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = load i64, i64* @TRUE, align 8
  %116 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_9__* %114, i64 %115)
  %117 = call i32 (...) @memorystatus_reschedule_idle_demotion_locked()
  br label %118

118:                                              ; preds = %113, %99
  %119 = call i32 (...) @memorystatus_check_levels_locked()
  %120 = load i64, i64* %4, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (...) @proc_list_unlock()
  br label %124

124:                                              ; preds = %122, %118
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = icmp ne %struct.TYPE_9__* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @ESRCH, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %127
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isSysProc(%struct.TYPE_9__*) #1

declare dso_local i64 @isApp(%struct.TYPE_9__*) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @memorystatus_reschedule_idle_demotion_locked(...) #1

declare dso_local i32 @memorystatus_check_levels_locked(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
