; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_mtx_perf.c_fix_cpu_frequency.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_mtx_perf.c_fix_cpu_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"machdep.cpu.brand_string\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"sysctlbyname machdep.cpu.brand_string\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CPU @ \00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Could not fix frequency, %s field not present\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"Hz\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"CPU @ %f%cHz\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"hz\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"CPU @ %f%chz\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Could not fix frequency, scale field is %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Setting min and max cpu frequency to %d (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"/usr/local/bin/xcpm\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@environ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fix_cpu_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_cpu_frequency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [10 x i8], align 1
  %11 = alloca [5 x i8*], align 16
  %12 = call i32 @sysctlbyname(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* null, i64* %5, i32* null, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @T_QUIET, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, 2
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @sysctlbyname(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %19, i64* %5, i32* null, i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @T_QUIET, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strstr(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %0
  %33 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %86

34:                                               ; preds = %0
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), float* %6, i8* %7)
  br label %51

41:                                               ; preds = %34
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), float* %6, i8* %7)
  br label %50

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %86

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %61 [
    i32 77, label %54
    i32 109, label %54
    i32 71, label %57
    i32 103, label %57
  ]

54:                                               ; preds = %51, %51
  %55 = load float, float* %6, align 4
  %56 = fptosi float %55 to i32
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %51, %51
  %58 = load float, float* %6, align 4
  %59 = fmul float %58, 1.000000e+03
  %60 = fptosi float %59 to i32
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load i8, i8* %7, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %63)
  br label %86

65:                                               ; preds = %57, %54
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @snprintf(i8* %66, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %71 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %69, i8* %70)
  %72 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %72, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  store i8* %75, i8** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 1
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  store i8* %77, i8** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 1
  store i8* null, i8** %78, align 8
  %79 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %80 = load i8*, i8** %79, align 16
  %81 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %82 = load i32, i32* @environ, align 4
  %83 = call i32 @posix_spawn(i32* %2, i8* %80, i32* null, i32* null, i8** %81, i32 %82)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @waitpid(i32 %84, i32* %1, i32 0)
  br label %86

86:                                               ; preds = %65, %61, %48, %32
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @free(i8* %87)
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @T_LOG(i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, float*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @posix_spawn(i32*, i8*, i32*, i32*, i8**, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
