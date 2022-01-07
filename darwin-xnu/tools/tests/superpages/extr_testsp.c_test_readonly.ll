; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_readonly.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"mach_vm_protect\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"mach_vm_deallocate\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_readonly() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @mach_task_self()
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %10 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @mach_vm_allocate(i32 %7, i32* %4, i32 %8, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @check_kr(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %1, align 4
  br label %55

18:                                               ; preds = %0
  %19 = call i32 (...) @mach_task_self()
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VM_PROT_READ, align 4
  %23 = call i32 @mach_vm_protect(i32 %19, i32 %20, i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @check_kr(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %1, align 4
  br label %55

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @check_r(i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %1, align 4
  br label %55

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @check_nw(i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %1, align 4
  br label %55

43:                                               ; preds = %36
  %44 = call i32 (...) @mach_task_self()
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mach_vm_deallocate(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @check_kr(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* %1, align 4
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %53, %51, %41, %34, %27, %16
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32 @mach_vm_allocate(i32, i32*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @mach_vm_protect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @check_r(i32, i32, i32*) #1

declare dso_local i32 @check_nw(i32, i32) #1

declare dso_local i32 @mach_vm_deallocate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
