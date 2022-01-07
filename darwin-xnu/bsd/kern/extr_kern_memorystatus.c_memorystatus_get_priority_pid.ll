; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_priority_pid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_priority_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }

@USER_ADDR_NULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @memorystatus_get_priority_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_get_priority_pid(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @USER_ADDR_NULL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 24
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %13, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.TYPE_8__* @proc_find(i64 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ESRCH, align 4
  store i32 %28, i32* %4, align 4
  br label %68

29:                                               ; preds = %22
  %30 = call i32 @memset(%struct.TYPE_9__* %9, i32 0, i32 24)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %29
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %52 = call i32 @task_get_phys_footprint_limit(i32 %50, i64* %51)
  br label %58

53:                                               ; preds = %29
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = call i32 @memorystatus_build_state(%struct.TYPE_8__* %59)
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = call i32 @proc_rele(%struct.TYPE_8__* %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @copyout(%struct.TYPE_9__* %9, i32 %64, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %58, %27, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_8__* @proc_find(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @task_get_phys_footprint_limit(i32, i64*) #1

declare dso_local i32 @memorystatus_build_state(%struct.TYPE_8__*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_8__*) #1

declare dso_local i32 @copyout(%struct.TYPE_9__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
