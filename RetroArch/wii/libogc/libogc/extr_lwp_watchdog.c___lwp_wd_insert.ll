; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_watchdog.c___lwp_wd_insert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_watchdog.c___lwp_wd_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }

@LWP_WD_INSERTED = common dso_local global i64 0, align 8
@_wd_sync_count = common dso_local global i32 0, align 4
@_wd_sync_level = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_wd_insert(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = call i64 (...) @__lwp_isr_in_progress()
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @LWP_WD_INSERTED, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @_wd_sync_count, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @_wd_sync_count, align 4
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @_CPU_ISR_Disable(i64 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.TYPE_10__* @__lwp_wd_first(i32* %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  br label %23

23:                                               ; preds = %56, %15
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = call %struct.TYPE_10__* @__lwp_wd_next(%struct.TYPE_10__* %27)
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %23
  br label %59

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %59

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @_CPU_ISR_Flash(i64 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LWP_WD_INSERTED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %80

47:                                               ; preds = %38
  %48 = load i64, i64* @_wd_sync_level, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* @_wd_sync_level, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @_CPU_ISR_Restore(i64 %53)
  br label %15

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = call %struct.TYPE_10__* @__lwp_wd_next(%struct.TYPE_10__* %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %8, align 8
  br label %23

59:                                               ; preds = %37, %30
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @__lwp_wd_activate(%struct.TYPE_10__* %60)
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = call i32 @__lwp_queue_insertI(i32 %68, %struct.TYPE_11__* %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call %struct.TYPE_10__* @__lwp_wd_first(i32* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = icmp eq %struct.TYPE_10__* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %59
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = call i32 @__lwp_wd_settimer(%struct.TYPE_10__* %77)
  br label %79

79:                                               ; preds = %76, %59
  br label %80

80:                                               ; preds = %79, %46
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* @_wd_sync_level, align 8
  %82 = load i32, i32* @_wd_sync_count, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @_wd_sync_count, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @_CPU_ISR_Restore(i64 %84)
  ret void
}

declare dso_local i64 @__lwp_isr_in_progress(...) #1

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local %struct.TYPE_10__* @__lwp_wd_first(i32*) #1

declare dso_local %struct.TYPE_10__* @__lwp_wd_next(%struct.TYPE_10__*) #1

declare dso_local i32 @_CPU_ISR_Flash(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @__lwp_wd_activate(%struct.TYPE_10__*) #1

declare dso_local i32 @__lwp_queue_insertI(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @__lwp_wd_settimer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
