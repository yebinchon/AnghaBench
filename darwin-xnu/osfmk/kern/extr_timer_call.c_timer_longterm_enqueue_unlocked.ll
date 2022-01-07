; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_longterm_enqueue_unlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_longterm_enqueue_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i64 }

@timer_longterm = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@TIMER_CALL_LOCAL = common dso_local global i32 0, align 4
@TIMER_LONGTERM_NONE = common dso_local global i64 0, align 8
@timer_longterm_queue = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@master_cpu = common dso_local global i32 0, align 4
@timer_longterm_update = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @timer_longterm_enqueue_unlocked(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32** %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32** %3, i32*** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_11__* @timer_longterm, %struct.TYPE_11__** %18, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %22, %26
  store i64 %27, i64* %20, align 8
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @TIMER_CALL_LOCAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TIMER_LONGTERM_NONE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %20, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %32, %8
  store i32* null, i32** %9, align 8
  br label %122

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = call i32* @timer_call_dequeue_unlocked(%struct.TYPE_12__* %45)
  %47 = load i32**, i32*** %13, align 8
  store i32* %46, i32** %47, align 8
  %48 = call i32 (...) @ml_get_interrupts_enabled()
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = call i32 @simple_lock(i32* %54)
  %56 = load i32*, i32** @timer_longterm_queue, align 8
  %57 = call i32 @timer_queue_lock_spin(i32* %56)
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = call %struct.TYPE_13__* @TCE(%struct.TYPE_12__* %59)
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = call %struct.TYPE_13__* @TCE(%struct.TYPE_12__* %63)
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = load i32*, i32** @timer_longterm_queue, align 8
  %77 = call i32 @timer_call_entry_enqueue_tail(%struct.TYPE_12__* %75, i32* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %82, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %44
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %89, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i64 %96, i64* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %103, align 8
  %104 = load i64, i64* @TRUE, align 8
  store i64 %104, i64* %19, align 8
  br label %105

105:                                              ; preds = %95, %88, %44
  %106 = load i32*, i32** @timer_longterm_queue, align 8
  %107 = call i32 @timer_queue_unlock(i32* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = call i32 @simple_unlock(i32* %109)
  %111 = load i64, i64* %19, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load i32, i32* @master_cpu, align 4
  %115 = load i64, i64* @timer_longterm_update, align 8
  %116 = inttoptr i64 %115 to void (i8*)*
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %118 = bitcast %struct.TYPE_11__* %117 to i8*
  %119 = call i32 @timer_call_nosync_cpu(i32 %114, void (i8*)* %116, i8* %118)
  br label %120

120:                                              ; preds = %113, %105
  %121 = load i32*, i32** @timer_longterm_queue, align 8
  store i32* %121, i32** %9, align 8
  br label %122

122:                                              ; preds = %120, %43
  %123 = load i32*, i32** %9, align 8
  ret i32* %123
}

declare dso_local i32* @timer_call_dequeue_unlocked(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @timer_queue_lock_spin(i32*) #1

declare dso_local %struct.TYPE_13__* @TCE(%struct.TYPE_12__*) #1

declare dso_local i32 @timer_call_entry_enqueue_tail(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @timer_queue_unlock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @timer_call_nosync_cpu(i32, void (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
