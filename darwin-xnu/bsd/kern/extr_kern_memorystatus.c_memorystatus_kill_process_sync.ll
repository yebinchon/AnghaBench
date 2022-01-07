; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_process_sync.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_process_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@memorystatus_jetsam_snapshot_count = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot = common dso_local global %struct.TYPE_2__* null, align 8
@memorystatus_jetsam_snapshot_last_timestamp = common dso_local global i64 0, align 8
@memorystatus_jetsam_snapshot_timeout = common dso_local global i64 0, align 8
@kMemorystatusSnapshotNote = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @memorystatus_kill_process_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memorystatus_kill_process_sync(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* @TRUE, align 8
  %16 = load i64, i64* @TRUE, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @memorystatus_kill_top_process(i64 %15, i64 %16, i64 %17, i32 %18, i32* null, i64* %8)
  store i64 %19, i64* %7, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @memorystatus_kill_specific_process(i32 %21, i64 %22, i32 %23)
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @memorystatus_clear_errors()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @TRUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = call i32 (...) @proc_list_lock()
  %36 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = add i64 4, %38
  store i64 %39, i64* %9, align 8
  %40 = call i64 (...) @mach_absolute_time()
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @memorystatus_jetsam_snapshot, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @memorystatus_jetsam_snapshot_count, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %34
  %47 = load i64, i64* @memorystatus_jetsam_snapshot_last_timestamp, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @memorystatus_jetsam_snapshot_last_timestamp, align 8
  %52 = load i64, i64* @memorystatus_jetsam_snapshot_timeout, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49, %46
  %56 = call i32 (...) @proc_list_unlock()
  %57 = load i32, i32* @kMemorystatusSnapshotNote, align 4
  %58 = call i32 @memorystatus_send_note(i32 %57, i64* %9, i32 8)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = call i32 (...) @proc_list_lock()
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* @memorystatus_jetsam_snapshot_last_timestamp, align 8
  %64 = call i32 (...) @proc_list_unlock()
  br label %65

65:                                               ; preds = %61, %55
  br label %68

66:                                               ; preds = %49, %34
  %67 = call i32 (...) @proc_list_unlock()
  br label %68

68:                                               ; preds = %66, %65
  br label %69

69:                                               ; preds = %68, %30
  %70 = load i64, i64* %7, align 8
  ret i64 %70
}

declare dso_local i64 @memorystatus_kill_top_process(i64, i64, i64, i32, i32*, i64*) #1

declare dso_local i64 @memorystatus_kill_specific_process(i32, i64, i32) #1

declare dso_local i32 @memorystatus_clear_errors(...) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @memorystatus_send_note(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
