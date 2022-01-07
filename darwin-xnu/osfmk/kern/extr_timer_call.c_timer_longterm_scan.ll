; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_longterm_scan.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_longterm_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_23__* }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_23__* }

@master_cpu = common dso_local global i64 0, align 8
@TIMER_LONGTERM_NONE = common dso_local global i64 0, align 8
@timer_longterm_queue = common dso_local global %struct.TYPE_24__* null, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DECR_TIMER_ESCALATE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@TIMER_LONGTERM_SCAN_AGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"timer_longterm_scan() paused %llu, qlen: %llu\0A\00", align 1
@DECR_TIMER_ASYNC_DEQ = common dso_local global i32 0, align 4
@DECR_TIMER_OVERDUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_longterm_scan(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  store i64 %15, i64* %9, align 8
  %16 = call i32 (...) @ml_get_interrupts_enabled()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i64 (...) @cpu_number()
  %22 = load i64, i64* @master_cpu, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TIMER_LONGTERM_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %32, %2
  %40 = load i64, i64* @TIMER_LONGTERM_NONE, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** @timer_longterm_queue, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = call i64 @queue_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %165

52:                                               ; preds = %39
  %53 = load i64, i64* @master_cpu, align 8
  %54 = call i32* @timer_queue_cpu(i64 %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @timer_queue_lock_spin(i32* %55)
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** @timer_longterm_queue, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = call i32 @queue_first(i32* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %161, %79, %52
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** @timer_longterm_queue, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @queue_end(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %162

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = call %struct.TYPE_23__* @TIMER_CALL(i32 %68)
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %6, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @queue_next(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = call i32 @simple_lock_try(%struct.TYPE_17__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %67
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = call i32 @timer_call_entry_dequeue_async(%struct.TYPE_23__* %80)
  br label %60

82:                                               ; preds = %67
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %82
  %87 = load i32, i32* @KDEBUG_TRACE, align 4
  %88 = load i32, i32* @DECR_TIMER_ESCALATE, align 4
  %89 = load i32, i32* @DBG_FUNC_NONE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %92 = call i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_23__* %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %94 = call %struct.TYPE_18__* @TCE(%struct.TYPE_23__* %93)
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = call %struct.TYPE_18__* @TCE(%struct.TYPE_23__* %97)
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = call %struct.TYPE_18__* @TCE(%struct.TYPE_23__* %101)
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @VM_KERNEL_UNSLIDE(i32 %104)
  %106 = call i32 @TIMER_KDEBUG_TRACE(i32 %87, i32 %90, i64 %92, i64 %96, i64 %100, i64 %105, i32 0)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = call i32 @timer_call_entry_dequeue(%struct.TYPE_23__* %111)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %116 = call %struct.TYPE_18__* @TCE(%struct.TYPE_23__* %115)
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @timer_call_entry_enqueue_deadline(%struct.TYPE_23__* %113, i32* %114, i64 %118)
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @timer_queue_assign(i64 %120)
  br label %139

122:                                              ; preds = %82
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %123, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  store i64 %130, i64* %133, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  store %struct.TYPE_23__* %134, %struct.TYPE_23__** %137, align 8
  br label %138

138:                                              ; preds = %129, %122
  br label %139

139:                                              ; preds = %138, %86
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = call i32 @simple_unlock(%struct.TYPE_17__* %141)
  %143 = call i64 (...) @mach_absolute_time()
  %144 = load i64, i64* %9, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %139
  %147 = load i64, i64* @TIMER_LONGTERM_SCAN_AGAIN, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  store i64 %147, i64* %150, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %155, i32 %159)
  br label %162

161:                                              ; preds = %139
  br label %60

162:                                              ; preds = %146, %60
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @timer_queue_unlock(i32* %163)
  br label %165

165:                                              ; preds = %162, %51
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i64 @queue_empty(i32*) #1

declare dso_local i32* @timer_queue_cpu(i64) #1

declare dso_local i32 @timer_queue_lock_spin(i32*) #1

declare dso_local i32 @queue_first(i32*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @TIMER_CALL(i32) #1

declare dso_local i32 @queue_next(i32) #1

declare dso_local i32 @simple_lock_try(%struct.TYPE_17__*) #1

declare dso_local i32 @timer_call_entry_dequeue_async(%struct.TYPE_23__*) #1

declare dso_local i32 @TIMER_KDEBUG_TRACE(i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_18__* @TCE(%struct.TYPE_23__*) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE(i32) #1

declare dso_local i32 @timer_call_entry_dequeue(%struct.TYPE_23__*) #1

declare dso_local i32 @timer_call_entry_enqueue_deadline(%struct.TYPE_23__*, i32*, i64) #1

declare dso_local i32 @timer_queue_assign(i64) #1

declare dso_local i32 @simple_unlock(%struct.TYPE_17__*) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @DBG(i8*, i64, i32) #1

declare dso_local i32 @timer_queue_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
