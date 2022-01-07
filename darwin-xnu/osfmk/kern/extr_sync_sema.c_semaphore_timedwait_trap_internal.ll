; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_timedwait_trap_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_timedwait_trap_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@KERN_INVALID_VALUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@SEMAPHORE_OPTION_NONE = common dso_local global i32 0, align 4
@SEMAPHORE_TIMEOUT_NOBLOCK = common dso_local global i32 0, align 4
@SEMAPHORE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @semaphore_timedwait_trap_internal(i32 %0, i32 %1, i64 %2, void (i64)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca void (i64)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store void (i64)* %3, void (i64)** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = call i64 @BAD_MACH_TIMESPEC(%struct.TYPE_3__* %11)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @KERN_INVALID_VALUE, align 8
  store i64 %22, i64* %5, align 8
  br label %53

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @port_name_to_semaphore(i32 %24, i32* %10)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i32, i32* @SEMAPHORE_OPTION_NONE, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @SEMAPHORE_TIMEOUT_NOBLOCK, align 4
  store i32 %37, i32* %13, align 4
  br label %42

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @semaphore_deadline(i32 %39, i64 %40)
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @SEMAPHORE_NULL, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load void (i64)*, void (i64)** %9, align 8
  %48 = call i64 @semaphore_wait_internal(i32 %43, i32 %44, i32 %45, i32 %46, void (i64)* %47)
  store i64 %48, i64* %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @semaphore_dereference(i32 %49)
  br label %51

51:                                               ; preds = %42, %23
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i64 @BAD_MACH_TIMESPEC(%struct.TYPE_3__*) #1

declare dso_local i64 @port_name_to_semaphore(i32, i32*) #1

declare dso_local i32 @semaphore_deadline(i32, i64) #1

declare dso_local i64 @semaphore_wait_internal(i32, i32, i32, i32, void (i64)*) #1

declare dso_local i32 @semaphore_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
