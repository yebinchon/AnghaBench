; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_fileio.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_test_fileio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERPAGE_SIZE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mach_vm_allocate (1)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"mach_vm_allocate (2)\00", align 1
@FILENAME = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"couldn't open %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@F_NOCACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"short read (1)\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"short read (2)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"read data corrupt\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"mach_vm_deallocate (1)\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"mach_vm_deallocate (2)\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fileio() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load i32, i32* @SUPERPAGE_SIZE, align 4
  store i32 %9, i32* %4, align 4
  %10 = call i32 (...) @mach_task_self()
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %13 = load i32, i32* @VM_FLAGS_SUPERPAGE_SIZE_2MB, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @mach_vm_allocate(i32 %10, i64* %2, i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @check_kr(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %1, align 4
  br label %107

21:                                               ; preds = %0
  %22 = call i32 (...) @mach_task_self()
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %25 = call i32 @mach_vm_allocate(i32 %22, i64* %3, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @check_kr(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %1, align 4
  br label %107

31:                                               ; preds = %21
  %32 = load i8*, i8** @FILENAME, align 8
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i32 @open(i8* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @error, align 4
  %38 = load i8*, i8** @FILENAME, align 8
  %39 = call i32 (i32, i8*, ...) @sprintf(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %1, align 4
  br label %107

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @F_NOCACHE, align 4
  %44 = call i32 @fcntl(i32 %42, i32 %43, i32 1)
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* %2, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* @SUPERPAGE_SIZE, align 4
  %49 = call i32 @read(i32 %45, i8* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @SUPERPAGE_SIZE, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @error, align 4
  %54 = call i32 (i32, i8*, ...) @sprintf(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %1, align 4
  br label %107

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i32 @lseek(i32 %57, i32 0, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %3, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* @SUPERPAGE_SIZE, align 4
  %64 = call i32 @read(i32 %60, i8* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @SUPERPAGE_SIZE, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @error, align 4
  %69 = call i32 (i32, i8*, ...) @sprintf(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %1, align 4
  br label %107

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i64, i64* %2, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i64, i64* %3, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @memcmp(i8* %75, i8* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @error, align 4
  %83 = call i32 (i32, i8*, ...) @sprintf(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %1, align 4
  br label %107

85:                                               ; preds = %71
  %86 = call i32 (...) @mach_task_self()
  %87 = load i64, i64* %2, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @mach_vm_deallocate(i32 %86, i64 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @check_kr(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 %91, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %1, align 4
  br label %107

95:                                               ; preds = %85
  %96 = call i32 (...) @mach_task_self()
  %97 = load i64, i64* %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @mach_vm_deallocate(i32 %96, i64 %97, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @check_kr(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 %101, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %1, align 4
  br label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %1, align 4
  br label %107

107:                                              ; preds = %105, %103, %93, %81, %67, %52, %36, %29, %19
  %108 = load i32, i32* %1, align 4
  ret i32 %108
}

declare dso_local i32 @mach_vm_allocate(i32, i64*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @check_kr(i32, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @mach_vm_deallocate(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
