; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_kernel_configure.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_kernel_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KTRACE_KPERF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"kperf: unable to parse '%s' as action sampler\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"kperf: missing timer period in config\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"kperf: unable to parse '%s' as timer period\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"kperf: cannot enable sampling at boot: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_kernel_configure(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 (...) @ktrace_start_single_threaded()
  %15 = load i32, i32* @KTRACE_KPERF, align 4
  %16 = call i32 @ktrace_kernel_configure(i32 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 112
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %22, %1
  br label %26

26:                                               ; preds = %84, %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @kperf_action_set_count(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @kperf_timer_set_count(i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strtouq(i8* %33, i8** %4, i32 0)
  store i64 %34, i64* %6, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %98

41:                                               ; preds = %26
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @kperf_action_set_samplers(i32 %43, i64 %44)
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %98

53:                                               ; preds = %41
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %2, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = call i64 @strtouq(i8* %56, i8** %4, i32 0)
  store i64 %57, i64* %7, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  br label %98

64:                                               ; preds = %53
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @nanoseconds_to_absolutetime(i64 %65, i64* %8)
  %67 = load i8*, i8** %4, align 8
  store i8* %67, i8** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @kperf_timer_set_period(i32 %69, i64 %70)
  %72 = load i32, i32* %3, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @kperf_timer_set_action(i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @kperf_timer_set_petid(i32 %80)
  %82 = call i32 @kperf_set_lightweight_pet(i32 1)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %64
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %2, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %2, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 44
  br i1 %89, label %26, label %90

90:                                               ; preds = %84
  %91 = call i32 (...) @kperf_sampling_enable()
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97, %61, %51, %38
  %99 = call i32 (...) @ktrace_end_single_threaded()
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ktrace_start_single_threaded(...) #1

declare dso_local i32 @ktrace_kernel_configure(i32) #1

declare dso_local i32 @kperf_action_set_count(i32) #1

declare dso_local i32 @kperf_timer_set_count(i32) #1

declare dso_local i64 @strtouq(i8*, i8**, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kperf_action_set_samplers(i32, i64) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i64, i64*) #1

declare dso_local i32 @kperf_timer_set_period(i32, i64) #1

declare dso_local i32 @kperf_timer_set_action(i32, i32) #1

declare dso_local i32 @kperf_timer_set_petid(i32) #1

declare dso_local i32 @kperf_set_lightweight_pet(i32) #1

declare dso_local i32 @kperf_sampling_enable(...) #1

declare dso_local i32 @ktrace_end_single_threaded(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
