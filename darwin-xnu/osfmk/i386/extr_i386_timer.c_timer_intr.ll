; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_intr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DECR_TRAP_LATENCY = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@DECR_PM_DEADLINE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@EndOfAllTime = common dso_local global i32 0, align 4
@spurious_timers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_intr(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = call %struct.TYPE_9__* (...) @current_cpu_datap()
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = call i32 (...) @current_processor()
  %15 = call i32 @SCHED_STATS_TIMER_POP(i32 %14)
  %16 = call i64 (...) @mach_absolute_time()
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %25, %29
  br label %31

31:                                               ; preds = %24, %2
  %32 = phi i1 [ true, %2 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  br i1 %32, label %34, label %95

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @MAX(i64 %38, i64 %41)
  %43 = sub nsw i64 %35, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %34
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %53, %57
  %59 = call i32 @TCOAL_DEBUG(i32 -286392320, i64 %48, i64 %52, i64 %58, i32 0, i32 0)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %47, %34
  %61 = load i32, i32* @KDEBUG_TRACE, align 4
  %62 = load i32, i32* @DECR_TRAP_LATENCY, align 4
  %63 = load i32, i32* @DBG_FUNC_NONE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 0, %65
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i64, i64* %4, align 8
  br label %74

71:                                               ; preds = %60
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @VM_KERNEL_UNSLIDE(i64 %72)
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i64 [ %70, %69 ], [ %73, %71 ]
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %61, i32 %64, i32 %66, i64 %75, i32 %76, i32 0, i32 0)
  %78 = load i8*, i8** @TRUE, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @timer_queue_expire(%struct.TYPE_11__* %83, i64 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = call i64 (...) @mach_absolute_time()
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %74, %31
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = call i64 @pmCPUGetDeadline(%struct.TYPE_9__* %96)
  store i64 %97, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i32, i32* @KDEBUG_TRACE, align 4
  %105 = load i32, i32* @DECR_PM_DEADLINE, align 4
  %106 = load i32, i32* @DBG_FUNC_START, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %104, i32 %107, i32 0, i64 0, i32 0, i32 0, i32 0)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = call i32 @pmCPUDeadline(%struct.TYPE_9__* %109)
  %111 = load i32, i32* @KDEBUG_TRACE, align 4
  %112 = load i32, i32* @DECR_PM_DEADLINE, align 4
  %113 = load i32, i32* @DBG_FUNC_END, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %111, i32 %114, i32 0, i64 0, i32 0, i32 0, i32 0)
  %116 = load i8*, i8** @TRUE, align 8
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %10, align 4
  %118 = call i64 (...) @mach_absolute_time()
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %103, %99, %95
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %5, align 8
  %125 = icmp sle i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load i64, i64* %11, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @quantum_timer_expire(i64 %132)
  br label %134

134:                                              ; preds = %129, %126, %119
  %135 = load i32, i32* @EndOfAllTime, align 4
  %136 = call %struct.TYPE_10__* (...) @x86_lcpu()
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = call i32 (...) @timer_resync_deadlines()
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @FALSE, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i64 @__improbable(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %134
  %146 = load i32, i32* @spurious_timers, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @spurious_timers, align 4
  br label %148

148:                                              ; preds = %145, %134
  ret void
}

declare dso_local %struct.TYPE_9__* @current_cpu_datap(...) #1

declare dso_local i32 @SCHED_STATS_TIMER_POP(i32) #1

declare dso_local i32 @current_processor(...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @TCOAL_DEBUG(i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE(i64) #1

declare dso_local i64 @timer_queue_expire(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @pmCPUGetDeadline(%struct.TYPE_9__*) #1

declare dso_local i32 @pmCPUDeadline(%struct.TYPE_9__*) #1

declare dso_local i32 @quantum_timer_expire(i64) #1

declare dso_local %struct.TYPE_10__* @x86_lcpu(...) #1

declare dso_local i32 @timer_resync_deadlines(...) #1

declare dso_local i64 @__improbable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
