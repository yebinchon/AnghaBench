; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_timedwait_signal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_timedwait_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@SEMAPHORE_OPTION_NONE = common dso_local global i32 0, align 4
@SEMAPHORE_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@SEMAPHORE_TIMEOUT_NOBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @semaphore_timedwait_signal(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_4__* %6 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  %14 = load i32, i32* @SEMAPHORE_OPTION_NONE, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SEMAPHORE_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = call i64 @BAD_MACH_TIMESPEC(%struct.TYPE_4__* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %24, i32* %5, align 4
  br label %47

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @SEMAPHORE_TIMEOUT_NOBLOCK, align 4
  store i32 %34, i32* %9, align 4
  br label %41

35:                                               ; preds = %29, %25
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @semaphore_deadline(i64 %37, i64 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @semaphore_wait_internal(i64 %42, i64 %43, i32 %44, i32 %45, void (i32)* null)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %23, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @BAD_MACH_TIMESPEC(%struct.TYPE_4__*) #1

declare dso_local i32 @semaphore_deadline(i64, i64) #1

declare dso_local i32 @semaphore_wait_internal(i64, i64, i32, i32, void (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
