; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_fork.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@stdout = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"child could access superpage\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mach_vm_deallocate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %7 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 (...) @mach_task_self()
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %11 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mach_vm_allocate(i32 %8, i32* %2, i32 %9, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @check_kr(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %1, align 4
  br label %64

19:                                               ; preds = %0
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = call i32 (...) @fork()
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @check_rw(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %1, align 4
  br label %64

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @waitpid(i32 %32, i32* %5, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @error, align 4
  %38 = call i32 @sprintf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %1, align 4
  br label %64

40:                                               ; preds = %31
  br label %52

41:                                               ; preds = %19
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @check_nr(i32 %42, i32 %43, i32* null)
  store i32 %44, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %41
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable

52:                                               ; preds = %40
  %53 = call i32 (...) @mach_task_self()
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @mach_vm_deallocate(i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @check_kr(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %1, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %60, %36, %29, %17
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @mach_vm_allocate(i32, i32*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @check_rw(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @check_nr(i32, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mach_vm_deallocate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
