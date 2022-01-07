; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_queue_migrate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_queue_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_24__* }

@.str = private unnamed_addr constant [28 x i8] c"timer_queue_migrate(%p,%p)\0A\00", align 1
@serverperfmode = common dso_local global i64 0, align 8
@TIMER_CALL_LOCAL = common dso_local global i32 0, align 4
@timer_queue_migrate_lock_skips = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@DECR_TIMER_ASYNC_DEQ = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_queue_migrate(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %11 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %9, %struct.TYPE_25__* %10)
  %12 = call i32 (...) @ml_get_interrupts_enabled()
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = icmp ne %struct.TYPE_25__* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* @serverperfmode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -4, i32* %3, align 4
  br label %129

25:                                               ; preds = %2
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = call i32 @timer_queue_lock_spin(%struct.TYPE_25__* %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 1
  %30 = call i32 @queue_first(i32* %29)
  %31 = call %struct.TYPE_24__* @TIMER_CALL(i32 %30)
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %7, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = call i64 @queue_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 -1, i32* %8, align 4
  br label %125

37:                                               ; preds = %25
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = call i32 @timer_queue_lock_spin(%struct.TYPE_25__* %38)
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 1
  %42 = call i64 @queue_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -2, i32* %8, align 4
  br label %122

45:                                               ; preds = %37
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  %48 = call i32 @queue_first(i32* %47)
  %49 = call %struct.TYPE_24__* @TIMER_CALL(i32 %48)
  store %struct.TYPE_24__* %49, %struct.TYPE_24__** %6, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = call %struct.TYPE_22__* @TCE(%struct.TYPE_24__* %50)
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %55 = call %struct.TYPE_22__* @TCE(%struct.TYPE_24__* %54)
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %122

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %74, %60
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TIMER_CALL_LOCAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 -3, i32* %8, align 4
  br label %122

69:                                               ; preds = %61
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %71 = call i32 @qe(%struct.TYPE_24__* %70)
  %72 = call i32 @queue_next(i32 %71)
  %73 = call %struct.TYPE_24__* @TIMER_CALL(i32 %72)
  store %struct.TYPE_24__* %73, %struct.TYPE_24__** %6, align 8
  br label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = call i32 @qe(%struct.TYPE_24__* %77)
  %79 = call i32 @queue_end(i32* %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %61, label %82

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %103, %98, %82
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = call i64 @queue_empty(i32* %85)
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %118

89:                                               ; preds = %83
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = call i32 @queue_first(i32* %91)
  %93 = call %struct.TYPE_24__* @TIMER_CALL(i32 %92)
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %6, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = call i32 @simple_lock_try(%struct.TYPE_21__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* @timer_queue_migrate_lock_skips, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @timer_queue_migrate_lock_skips, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %102 = call i32 @timer_call_entry_dequeue_async(%struct.TYPE_24__* %101)
  br label %83

103:                                              ; preds = %89
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = call i32 @timer_call_entry_dequeue(%struct.TYPE_24__* %104)
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = call %struct.TYPE_22__* @TCE(%struct.TYPE_24__* %108)
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @timer_call_entry_enqueue_deadline(%struct.TYPE_24__* %106, %struct.TYPE_25__* %107, i64 %111)
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = call i32 @simple_unlock(%struct.TYPE_21__* %116)
  br label %83

118:                                              ; preds = %83
  %119 = load i32, i32* @UINT64_MAX, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %68, %59, %44
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %124 = call i32 @timer_queue_unlock(%struct.TYPE_25__* %123)
  br label %125

125:                                              ; preds = %122, %36
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = call i32 @timer_queue_unlock(%struct.TYPE_25__* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %24
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @DBG(i8*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @timer_queue_lock_spin(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @TIMER_CALL(i32) #1

declare dso_local i32 @queue_first(i32*) #1

declare dso_local i64 @queue_empty(i32*) #1

declare dso_local %struct.TYPE_22__* @TCE(%struct.TYPE_24__*) #1

declare dso_local i32 @queue_next(i32) #1

declare dso_local i32 @qe(%struct.TYPE_24__*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local i32 @simple_lock_try(%struct.TYPE_21__*) #1

declare dso_local i32 @timer_call_entry_dequeue_async(%struct.TYPE_24__*) #1

declare dso_local i32 @timer_call_entry_dequeue(%struct.TYPE_24__*) #1

declare dso_local i32 @timer_call_entry_enqueue_deadline(%struct.TYPE_24__*, %struct.TYPE_25__*, i64) #1

declare dso_local i32 @simple_unlock(%struct.TYPE_21__*) #1

declare dso_local i32 @timer_queue_unlock(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
