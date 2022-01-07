; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_second_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/jitter/extr_timer_jitter.c_second_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.second_thread_args = type { i64, i64, i32, double*, double, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Couldn't set thread policy.\0A\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"semaphore_wait %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"woke in past %llu (%d) < %llu (%d)\00", align 1
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"semaphore_signal %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @second_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.second_thread_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.second_thread_args*
  store %struct.second_thread_args* %10, %struct.second_thread_args** %3, align 8
  %11 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %12 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @thread_setup(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %105, %20
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %24 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %108

27:                                               ; preds = %21
  %28 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %29 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @semaphore_wait(i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %35, %27
  %39 = call i64 (...) @mach_absolute_time()
  store i64 %39, i64* %7, align 8
  %40 = call i32 (...) @_os_cpu_number()
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %43 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %50 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %53 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %47, i32 %48, i64 %51, i32 %54)
  br label %56

56:                                               ; preds = %46, %38
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %59 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %64 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %70 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = sitofp i64 %72 to double
  %74 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %75 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %74, i32 0, i32 3
  %76 = load double*, double** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds double, double* %76, i64 %77
  store double %73, double* %78, align 8
  %79 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %80 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %79, i32 0, i32 3
  %81 = load double*, double** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds double, double* %81, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %86 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %85, i32 0, i32 4
  %87 = load double, double* %86, align 8
  %88 = fcmp oge double %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %67
  %90 = load i32, i32* @DBG_FUNC_NONE, align 4
  %91 = or i32 15658724, %90
  %92 = call i32 @kdebug_trace(i32 %91, i32 0, i32 0, i32 0, i32 0)
  br label %93

93:                                               ; preds = %89, %67
  %94 = load %struct.second_thread_args*, %struct.second_thread_args** %3, align 8
  %95 = getelementptr inbounds %struct.second_thread_args, %struct.second_thread_args* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @semaphore_signal(i32 %96)
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @KERN_SUCCESS, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i64, i64* %6, align 8
  %103 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %101, %93
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %5, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %5, align 8
  br label %21

108:                                              ; preds = %21
  ret i8* null
}

declare dso_local i32 @thread_setup(i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @semaphore_wait(i32) #1

declare dso_local i32 @errx(i32, i8*, i64, ...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @_os_cpu_number(...) #1

declare dso_local i32 @kdebug_trace(i32, i32, i32, i32, i32) #1

declare dso_local i64 @semaphore_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
