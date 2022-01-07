; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_deallocatesubpage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_deallocatesubpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"mach_vm_deallocate\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_deallocatesubpage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @mach_task_self()
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %10 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @mach_vm_allocate(i32 %7, i64* %4, i32 %8, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @check_kr(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %1, align 4
  br label %39

18:                                               ; preds = %0
  %19 = call i32 (...) @mach_task_self()
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mach_vm_deallocate(i32 %19, i64 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @check_kr(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %1, align 4
  br label %39

30:                                               ; preds = %18
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @check_nr(i64 %31, i32 %32, i32* null)
  store i32 %33, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %1, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %35, %28, %16
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @mach_vm_allocate(i32, i64*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @mach_vm_deallocate(i32, i64, i32) #1

declare dso_local i32 @check_nr(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
