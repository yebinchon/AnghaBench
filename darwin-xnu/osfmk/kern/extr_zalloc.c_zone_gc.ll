; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_gc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@zone_gc_lock = common dso_local global i32 0, align 4
@TH_OPT_ZONE_GC = common dso_local global i32 0, align 4
@all_zones_lock = common dso_local global i32 0, align 4
@num_zones = common dso_local global i32 0, align 4
@zalloc_debug = common dso_local global i32 0, align 4
@ZALLOC_DEBUG_ZONEGC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"zone_gc() starting...\0A\00", align 1
@zone_array = common dso_local global %struct.TYPE_10__* null, align 8
@ZONE_NULL = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zone_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @kill_process_in_largest_zone()
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i32 @lck_mtx_lock(i32* @zone_gc_lock)
  %12 = load i32, i32* @TH_OPT_ZONE_GC, align 4
  %13 = call %struct.TYPE_11__* (...) @current_thread()
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = call i32 @simple_lock(i32* @all_zones_lock)
  %18 = load i32, i32* @num_zones, align 4
  store i32 %18, i32* %3, align 4
  %19 = call i32 @simple_unlock(i32* @all_zones_lock)
  %20 = load i32, i32* @zalloc_debug, align 4
  %21 = load i32, i32* @ZALLOC_DEBUG_ZONEGC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = call i32 @kprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %10
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %56, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @zone_array, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %4, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ZONE_NULL, align 8
  %38 = icmp ne %struct.TYPE_10__* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %56

46:                                               ; preds = %31
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i64 @queue_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = call i32 @drop_free_elements(%struct.TYPE_10__* %54)
  br label %56

56:                                               ; preds = %53, %52, %45
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load i32, i32* @TH_OPT_ZONE_GC, align 4
  %61 = xor i32 %60, -1
  %62 = call %struct.TYPE_11__* (...) @current_thread()
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = call i32 @lck_mtx_unlock(i32* @zone_gc_lock)
  ret void
}

declare dso_local i32 @kill_process_in_largest_zone(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @current_thread(...) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @queue_empty(i32*) #1

declare dso_local i32 @drop_free_elements(%struct.TYPE_10__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
