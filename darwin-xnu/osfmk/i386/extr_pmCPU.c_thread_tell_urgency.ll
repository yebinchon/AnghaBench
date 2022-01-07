; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_thread_tell_urgency.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_thread_tell_urgency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i64, i64)* }
%struct.TYPE_4__ = type { i32 }

@urgency_notification_assert_abstime_threshold = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@pmInitDone = common dso_local global i32 0, align 4
@pmDispatch = common dso_local global %struct.TYPE_3__* null, align 8
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_URGENCY = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@urgency_notification_max_recorded = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"Urgency notification callout %p exceeded threshold, 0x%llx abstime units\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4
@urgency_stats = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_tell_urgency(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %14 = load i64, i64* @urgency_notification_assert_abstime_threshold, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %13, align 8
  %18 = call i64 (...) @get_preemption_level()
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = call i64 (...) @ml_get_interrupts_enabled()
  %22 = load i64, i64* @FALSE, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi i1 [ true, %5 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @pmInitDone, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmDispatch, align 8
  %32 = icmp eq %struct.TYPE_3__* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmDispatch, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %35, align 8
  %37 = icmp eq i32 (i32, i64, i64)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %30, %24
  br label %117

39:                                               ; preds = %33
  %40 = load i32, i32* @DBG_MACH_SCHED, align 4
  %41 = load i32, i32* @MACH_URGENCY, align 4
  %42 = call i32 @MACHDBG_CODE(i32 %40, i32 %41)
  %43 = load i32, i32* @DBG_FUNC_START, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @SCHED_DEBUG_PLATFORM_KERNEL_DEBUG_CONSTANT(i32 %44, i32 %45, i64 %46, i64 %47, i64 %48, i32 0)
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @TRUE, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @__improbable(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = call i64 (...) @mach_absolute_time()
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %56, %39
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.TYPE_4__* (...) @current_cpu_datap()
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmDispatch, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 %64(i32 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @TRUE, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @__improbable(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %58
  %76 = call i64 (...) @mach_absolute_time()
  %77 = load i64, i64* %11, align 8
  %78 = sub nsw i64 %76, %77
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @urgency_notification_max_recorded, align 8
  %81 = icmp sgt i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @__improbable(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %75
  %86 = load i64, i64* %12, align 8
  store i64 %86, i64* @urgency_notification_max_recorded, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @urgency_notification_assert_abstime_threshold, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call i32 (...) @machine_timeout_suspended()
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi i1 [ false, %85 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = call i64 @__improbable(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmDispatch, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @panic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 (i32, i64, i64)* %102, i64 %103)
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %58
  %108 = load i32, i32* @DBG_MACH_SCHED, align 4
  %109 = load i32, i32* @MACH_URGENCY, align 4
  %110 = call i32 @MACHDBG_CODE(i32 %108, i32 %109)
  %111 = load i32, i32* @DBG_FUNC_END, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @SCHED_DEBUG_PLATFORM_KERNEL_DEBUG_CONSTANT(i32 %112, i32 %113, i64 %114, i64 %115, i64 0, i32 0)
  br label %117

117:                                              ; preds = %107, %38
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @SCHED_DEBUG_PLATFORM_KERNEL_DEBUG_CONSTANT(i32, i32, i64, i64, i64, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local %struct.TYPE_4__* @current_cpu_datap(...) #1

declare dso_local i32 @machine_timeout_suspended(...) #1

declare dso_local i32 @panic(i8*, i32 (i32, i64, i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
