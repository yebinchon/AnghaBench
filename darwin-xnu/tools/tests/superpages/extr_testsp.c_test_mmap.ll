; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_mmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mmap()\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mach_vm_allocate\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"munmap\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_mmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PROT_READ, align 4
  %11 = load i32, i32* @MAP_ANON, align 4
  %12 = load i32, i32* @MAP_PRIVATE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %15 = call i64 @mmap(i8* %8, i32 %9, i32 %10, i32 %13, i32 %14, i32 0)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @MAP_FAILED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32, i32* @error, align 4
  %21 = call i32 @sprintf(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %1, align 4
  br label %68

23:                                               ; preds = %0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @check_addr0(i64 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %1, align 4
  br label %68

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @check_align(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %1, align 4
  br label %68

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @SUPERPAGE_SIZE, align 4
  %38 = call i32 @check_r(i64 %36, i32 %37, i32* null)
  store i32 %38, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %1, align 4
  br label %68

42:                                               ; preds = %35
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @SUPERPAGE_SIZE, align 4
  %45 = call i32 @check_nw(i64 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %1, align 4
  br label %68

49:                                               ; preds = %42
  %50 = load i64, i64* %4, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @munmap(i8* %51, i32 %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @check_kr(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  store i32 %58, i32* %1, align 4
  br label %68

59:                                               ; preds = %49
  %60 = load i64, i64* %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @check_nr(i64 %60, i32 %61, i32* null)
  store i32 %62, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  store i32 %65, i32* %1, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %66, %64, %57, %47, %40, %33, %27, %19
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i64 @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @check_addr0(i64, i8*) #1

declare dso_local i32 @check_align(i64) #1

declare dso_local i32 @check_r(i64, i32, i32*) #1

declare dso_local i32 @check_nw(i64, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @check_nr(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
