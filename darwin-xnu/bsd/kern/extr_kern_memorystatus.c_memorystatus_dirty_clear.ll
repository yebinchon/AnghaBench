; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_dirty_clear.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_dirty_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"memorystatus_dirty_clear(): %d 0x%x 0x%x\0A\00", align 1
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_DIRTY_CLEAR = common dso_local global i32 0, align 4
@P_LIST_EXITED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@P_MEMSTAT_INTERNAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P_DIRTY_TRACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PROC_DIRTY_LAUNCH_IN_PROGRESS = common dso_local global i32 0, align 4
@PROC_DIRTY_DEFER = common dso_local global i32 0, align 4
@PROC_DIRTY_DEFER_ALWAYS = common dso_local global i32 0, align 4
@P_DIRTY_LAUNCH_IN_PROGRESS = common dso_local global i32 0, align 4
@P_DIRTY_DEFER = common dso_local global i32 0, align 4
@P_DIRTY_DEFER_ALWAYS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memorystatus_dirty_clear(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32 %12)
  %14 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %15 = load i32, i32* @BSD_MEMSTAT_DIRTY_CLEAR, align 4
  %16 = call i32 @BSDDBG_CODE(i32 %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %16, i32 %19, i32 %20, i32 0, i32 0, i32 0)
  %22 = call i32 (...) @proc_list_lock()
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @P_LIST_EXITED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @EBUSY, align 4
  store i32 %30, i32* %5, align 4
  br label %118

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @P_MEMSTAT_INTERNAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EPERM, align 4
  store i32 %39, i32* %5, align 4
  br label %118

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @P_DIRTY_TRACK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %5, align 4
  br label %118

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PROC_DIRTY_LAUNCH_IN_PROGRESS, align 4
  %55 = load i32, i32* @PROC_DIRTY_DEFER, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PROC_DIRTY_DEFER_ALWAYS, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52, %49
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %5, align 4
  br label %118

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PROC_DIRTY_LAUNCH_IN_PROGRESS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @P_DIRTY_LAUNCH_IN_PROGRESS, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @PROC_DIRTY_DEFER, align 4
  %78 = load i32, i32* @PROC_DIRTY_DEFER_ALWAYS, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %75
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @P_DIRTY_DEFER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i32, i32* @P_DIRTY_DEFER, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %82
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @P_DIRTY_DEFER_ALWAYS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load i32, i32* @P_DIRTY_DEFER_ALWAYS, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %96
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_5__* %111, i32 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = call i32 @memorystatus_update_idle_priority_locked(%struct.TYPE_5__* %114)
  %116 = call i32 (...) @memorystatus_reschedule_idle_demotion_locked()
  br label %117

117:                                              ; preds = %110, %75
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %61, %47, %38, %29
  %119 = call i32 (...) @proc_list_unlock()
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @memorystatus_invalidate_idle_demotion_locked(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memorystatus_update_idle_priority_locked(%struct.TYPE_5__*) #1

declare dso_local i32 @memorystatus_reschedule_idle_demotion_locked(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
