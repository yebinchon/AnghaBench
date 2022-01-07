; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_master_scan.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_master_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@TIMER_LONGTERM_NONE = common dso_local global i64 0, align 8
@master_cpu = common dso_local global i32 0, align 4
@TIMER_CALL_LOCAL = common dso_local global i32 0, align 4
@timer_longterm_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64)* @timer_master_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_master_scan(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TIMER_LONGTERM_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %7, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @TIMER_LONGTERM_NONE, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* @master_cpu, align 4
  %27 = call %struct.TYPE_19__* @timer_queue_cpu(i32 %26)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %9, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = call i32 @timer_queue_lock_spin(%struct.TYPE_19__* %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = call i32 @queue_first(i32* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %90, %61, %55, %25
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @queue_end(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %94

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.TYPE_18__* @TIMER_CALL(i32 %41)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %6, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = call %struct.TYPE_15__* @TCE(%struct.TYPE_18__* %43)
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @queue_next(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TIMER_CALL_LOCAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %33

56:                                               ; preds = %40
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = call i32 @simple_lock_try(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = call i32 @timer_call_entry_dequeue_async(%struct.TYPE_18__* %62)
  br label %33

64:                                               ; preds = %56
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %70 = call i32 @timer_call_entry_dequeue(%struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = load i32, i32* @timer_longterm_queue, align 4
  %73 = call i32 @timer_call_entry_enqueue_tail(%struct.TYPE_18__* %71, i32 %72)
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %68
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i64 %81, i64* %84, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %88, align 8
  br label %89

89:                                               ; preds = %80, %68
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = call i32 @simple_unlock(i32* %92)
  br label %33

94:                                               ; preds = %33
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = call i32 @timer_queue_unlock(%struct.TYPE_19__* %95)
  ret void
}

declare dso_local %struct.TYPE_19__* @timer_queue_cpu(i32) #1

declare dso_local i32 @timer_queue_lock_spin(%struct.TYPE_19__*) #1

declare dso_local i32 @queue_first(i32*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @TIMER_CALL(i32) #1

declare dso_local %struct.TYPE_15__* @TCE(%struct.TYPE_18__*) #1

declare dso_local i32 @queue_next(i32) #1

declare dso_local i32 @simple_lock_try(i32*) #1

declare dso_local i32 @timer_call_entry_dequeue_async(%struct.TYPE_18__*) #1

declare dso_local i32 @timer_call_entry_dequeue(%struct.TYPE_18__*) #1

declare dso_local i32 @timer_call_entry_enqueue_tail(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @timer_queue_unlock(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
