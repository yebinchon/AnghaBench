; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_wait_trap_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_wait_trap_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@SEMAPHORE_NULL = common dso_local global i32 0, align 4
@SEMAPHORE_OPTION_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @semaphore_wait_trap_internal(i32 %0, void (i64)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (i64)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store void (i64)* %1, void (i64)** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @port_name_to_semaphore(i32 %7, i32* %5)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @KERN_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SEMAPHORE_NULL, align 4
  %15 = load i32, i32* @SEMAPHORE_OPTION_NONE, align 4
  %16 = load void (i64)*, void (i64)** %4, align 8
  %17 = call i64 @semaphore_wait_internal(i32 %13, i32 %14, i64 0, i32 %15, void (i64)* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @semaphore_dereference(i32 %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i64, i64* %6, align 8
  ret i64 %21
}

declare dso_local i64 @port_name_to_semaphore(i32, i32*) #1

declare dso_local i64 @semaphore_wait_internal(i32, i32, i64, i32, void (i64)*) #1

declare dso_local i32 @semaphore_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
