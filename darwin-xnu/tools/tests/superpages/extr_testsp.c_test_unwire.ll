; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_unwire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@VM_PROT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mach_vm_wire\00", align 1
@error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"could unwire\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"mach_vm_deallocate\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_unwire() #0 {
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
  br label %51

18:                                               ; preds = %0
  %19 = call i32 (...) @mach_host_self()
  %20 = call i32 (...) @mach_task_self()
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VM_PROT_NONE, align 4
  %24 = call i32 @mach_vm_wire(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @check_kr(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @error, align 4
  %30 = call i32 @sprintf(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %1, align 4
  br label %51

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @check_rw(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* %1, align 4
  br label %51

39:                                               ; preds = %32
  %40 = call i32 (...) @mach_task_self()
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @mach_vm_deallocate(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @check_kr(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %1, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %47, %37, %28, %16
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @mach_vm_allocate(i32, i32*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @mach_vm_wire(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @check_rw(i32, i32) #1

declare dso_local i32 @mach_vm_deallocate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
