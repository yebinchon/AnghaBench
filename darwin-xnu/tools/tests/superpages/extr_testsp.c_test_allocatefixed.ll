; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_allocatefixed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_allocatefixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIXED_ADDRESS1 = common dso_local global i32 0, align 4
@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mach_vm_deallocate\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_allocatefixed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @FIXED_ADDRESS1, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @mach_task_self()
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %11 = call i32 @mach_vm_allocate(i32 %8, i32* %4, i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @check_kr(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %1, align 4
  br label %50

17:                                               ; preds = %0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIXED_ADDRESS1, align 4
  %20 = call i32 @check_addr(i32 %18, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %1, align 4
  br label %50

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @check_rw(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %1, align 4
  br label %50

31:                                               ; preds = %24
  %32 = call i32 (...) @mach_task_self()
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mach_vm_deallocate(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @check_kr(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %1, align 4
  br label %50

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @check_nr(i32 %42, i32 %43, i32* null)
  store i32 %44, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %1, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %46, %39, %29, %22, %15
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @mach_vm_allocate(i32, i32*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @check_addr(i32, i32, i8*) #1

declare dso_local i32 @check_rw(i32, i32) #1

declare dso_local i32 @mach_vm_deallocate(i32, i32, i32) #1

declare dso_local i32 @check_nr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
