; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_allocate_vm_regions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_allocate_vm_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALLOCATION_SIZE_VM_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[%d] Allocating VM regions, each of size %lld KB\0A\00", align 1
@VM_TAG1 = common dso_local global i32 0, align 4
@VM_TAG2 = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"[%d] Number of allocations: %lld\0A\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @allocate_vm_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_vm_regions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ALLOCATION_SIZE_VM_REGION, align 4
  store i32 %5, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %6 = call i32 (...) @getpid()
  %7 = load i32, i32* %1, align 4
  %8 = ashr i32 %7, 10
  %9 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %31, %0
  store i32 0, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = srem i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @VM_TAG1, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @VM_TAG2, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @VM_MAKE_TAG(i32 %19)
  %21 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = call i32 (...) @mach_task_self()
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @mach_vm_allocate(i32 %23, i32* %3, i32 %24, i32 %25)
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %10

34:                                               ; preds = %29
  %35 = call i32 (...) @getpid()
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32 (...) @getppid()
  %39 = load i32, i32* @SIGUSR1, align 4
  %40 = call i32 @kill(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %41
  %42 = call i32 (...) @pause()
  br label %41
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @VM_MAKE_TAG(i32) #1

declare dso_local i64 @mach_vm_allocate(i32, i32*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
