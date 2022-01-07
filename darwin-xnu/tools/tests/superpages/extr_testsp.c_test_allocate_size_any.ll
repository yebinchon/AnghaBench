; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_allocate_size_any.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_allocate_size_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mach_vm_deallocate\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_allocate_size_any() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = mul nsw i32 2, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @mach_task_self()
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %11 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_ANY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mach_vm_allocate(i32 %8, i32* %4, i32 %9, i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @check_kr(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %1, align 4
  br label %51

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @check_addr0(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %1, align 4
  br label %51

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @check_rw(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %1, align 4
  br label %51

32:                                               ; preds = %25
  %33 = call i32 (...) @mach_task_self()
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mach_vm_deallocate(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @check_kr(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %1, align 4
  br label %51

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @check_nr(i32 %43, i32 %44, i32* null)
  store i32 %45, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %1, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %47, %40, %30, %23, %17
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @mach_vm_allocate(i32, i32*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @check_addr0(i32, i8*) #1

declare dso_local i32 @check_rw(i32, i32) #1

declare dso_local i32 @mach_vm_deallocate(i32, i32, i32) #1

declare dso_local i32 @check_nr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
