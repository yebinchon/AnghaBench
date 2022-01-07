; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_reallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_reallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"could allocate already allocated space, page %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mach_vm_deallocate\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_reallocate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  %8 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @mach_task_self()
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %12 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mach_vm_allocate(i32 %9, i64* %2, i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @check_kr(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %1, align 4
  br label %66

20:                                               ; preds = %0
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SUPERPAGE_SIZE, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sdiv i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load i64, i64* %2, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %3, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %34, i32* %4, align 4
  %35 = call i32 (...) @mach_task_self()
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mach_vm_allocate(i32 %35, i64* %3, i32 %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @check_kr(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %27
  %42 = load i32, i32* @error, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @sprintf(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = call i32 (...) @mach_task_self()
  %46 = load i64, i64* %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mach_vm_deallocate(i32 %45, i64 %46, i32 %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  br label %66

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %21
  %55 = call i32 (...) @mach_task_self()
  %56 = load i64, i64* %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @mach_vm_deallocate(i32 %55, i64 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @check_kr(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %1, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %64, %62, %41, %18
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @mach_vm_allocate(i32, i64*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @mach_vm_deallocate(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
