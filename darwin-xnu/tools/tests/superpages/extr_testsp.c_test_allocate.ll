; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_addr = common dso_local global i64 0, align 8
@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@global_size = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_allocate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i64 0, i64* @global_addr, align 8
  %4 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %4, i32* @global_size, align 4
  %5 = call i32 (...) @mach_task_self()
  %6 = load i32, i32* @global_size, align 4
  %7 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %8 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mach_vm_allocate(i32 %5, i64* @global_addr, i32 %6, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @check_kr(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %1, align 4
  br label %37

16:                                               ; preds = %0
  %17 = load i64, i64* @global_addr, align 8
  %18 = call i32 @check_addr0(i64 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %1, align 4
  br label %37

22:                                               ; preds = %16
  %23 = load i64, i64* @global_addr, align 8
  %24 = call i32 @check_align(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %1, align 4
  br label %37

28:                                               ; preds = %22
  %29 = load i64, i64* @global_addr, align 8
  %30 = load i32, i32* @global_size, align 4
  %31 = call i32 @check_rw(i64 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %1, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %33, %26, %20, %14
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @mach_vm_allocate(i32, i64*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @check_addr0(i64, i8*) #1

declare dso_local i32 @check_align(i64) #1

declare dso_local i32 @check_rw(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
