; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_specific_process.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_specific_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_count = common dso_local global i64 0, align 8
@OS_LOG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"%lu.%03d memorystatus: killing_specific_process pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@memorystatus_kill_cause_name = common dso_local global i32* null, align 8
@memorystatus_available_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @memorystatus_kill_specific_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_kill_specific_process(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_6__* @proc_find(i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @os_reason_free(i32 %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %74

22:                                               ; preds = %3
  %23 = call i32 (...) @proc_list_lock()
  %24 = load i64, i64* @memorystatus_jetsam_snapshot_count, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @memorystatus_init_jetsam_snapshot_locked(i32* null, i32 0)
  br label %28

28:                                               ; preds = %26, %22
  %29 = call i32 (...) @mach_absolute_time()
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @absolutetime_to_microtime(i32 %30, i64* %11, i32* %12)
  %32 = load i32, i32* %12, align 4
  %33 = sdiv i32 %32, 1000
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %13, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_6__* %35, i64 %36, i32 %37)
  %39 = call i32 (...) @proc_list_unlock()
  %40 = load i32, i32* @OS_LOG_DEFAULT, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8* [ %53, %50 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %54 ]
  %57 = load i32*, i32** @memorystatus_kill_cause_name, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* @memorystatus_available_pages, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @os_log_with_startup_serial(i32 %40, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42, i32 %43, i8* %56, i32 %60, i32 %63, i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @memorystatus_do_kill(%struct.TYPE_6__* %67, i64 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = call i32 @proc_rele(%struct.TYPE_6__* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %55, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_6__* @proc_find(i32) #1

declare dso_local i32 @os_reason_free(i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @memorystatus_init_jetsam_snapshot_locked(i32*, i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @absolutetime_to_microtime(i32, i64*, i32*) #1

declare dso_local i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @os_log_with_startup_serial(i32, i8*, i64, i64, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memorystatus_do_kill(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @proc_rele(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
