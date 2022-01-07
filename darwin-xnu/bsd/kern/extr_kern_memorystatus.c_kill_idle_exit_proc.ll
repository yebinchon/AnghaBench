; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_kill_idle_exit_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_kill_idle_exit_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i32, i8* }

@PROC_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@OS_REASON_NULL = common dso_local global i64 0, align 8
@OS_REASON_JETSAM = common dso_local global i32 0, align 4
@JETSAM_REASON_MEMORY_IDLE_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"kill_idle_exit_proc: failed to allocate jetsam reason\0A\00", align 1
@JETSAM_PRIORITY_IDLE = common dso_local global i64 0, align 8
@P_DIRTY_ALLOW_IDLE_EXIT = common dso_local global i32 0, align 4
@P_DIRTY_IS_DIRTY = common dso_local global i32 0, align 4
@P_DIRTY_TERMINATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"memorystatus: killing_idle_process pid %d [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kMemorystatusKilledIdleExit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kill_idle_exit_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_idle_exit_proc() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PROC_NULL, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %9, i64* %6, align 8
  %10 = call i64 (...) @mach_absolute_time()
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @OS_REASON_JETSAM, align 4
  %12 = load i32, i32* @JETSAM_REASON_MEMORY_IDLE_EXIT, align 4
  %13 = call i64 @os_reason_create(i32 %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @OS_REASON_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  %20 = call i32 (...) @proc_list_lock()
  %21 = load i32, i32* @FALSE, align 4
  %22 = call %struct.TYPE_10__* @memorystatus_get_first_proc_locked(i32* %5, i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %1, align 8
  br label %23

23:                                               ; preds = %60, %19
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %64

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @P_DIRTY_ALLOW_IDLE_EXIT, align 4
  %38 = load i32, i32* @P_DIRTY_IS_DIRTY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @P_DIRTY_TERMINATED, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = load i32, i32* @P_DIRTY_ALLOW_IDLE_EXIT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @P_DIRTY_TERMINATED, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %58 = call %struct.TYPE_10__* @proc_ref_locked(%struct.TYPE_10__* %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %2, align 8
  br label %64

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = call %struct.TYPE_10__* @memorystatus_get_next_proc_locked(i32* %5, %struct.TYPE_10__* %61, i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %1, align 8
  br label %23

64:                                               ; preds = %51, %32, %23
  %65 = call i32 (...) @proc_list_unlock()
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  br label %83

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i8* [ %81, %78 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %82 ]
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = load i32, i32* @kMemorystatusKilledIdleExit, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @memorystatus_do_kill(%struct.TYPE_10__* %86, i32 %87, i64 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = call i32 @proc_rele(%struct.TYPE_10__* %90)
  br label %95

92:                                               ; preds = %64
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @os_reason_free(i64 %93)
  br label %95

95:                                               ; preds = %92, %83
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i64 @os_reason_create(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.TYPE_10__* @memorystatus_get_first_proc_locked(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @proc_ref_locked(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @memorystatus_do_kill(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @proc_rele(%struct.TYPE_10__*) #1

declare dso_local i32 @os_reason_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
