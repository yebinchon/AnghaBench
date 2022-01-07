; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_cttest_job_100_000_jobs.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_cttest_job_100_000_jobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_tube = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"should match\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"get_all_jobs_used() => %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_job_100_000_jobs() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @default_tube, align 4
  %3 = call i32 @make_tube(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @TUBE_ASSIGN(i32 %2, i32 %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %11, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 100000
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* @default_tube, align 4
  %10 = call i32 @make_job(i32 0, i32 0, i32 1, i32 0, i32 %9)
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %5

14:                                               ; preds = %5
  %15 = call i32 (...) @get_all_jobs_used()
  %16 = icmp eq i32 %15, 100000
  %17 = zext i1 %16 to i32
  %18 = call i32 @assertf(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %26, %14
  %20 = load i32, i32* %1, align 4
  %21 = icmp sle i32 %20, 100000
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @job_find(i32 %23)
  %25 = call i32 @job_free(i32 %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (...) @get_all_jobs_used()
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 (...) @get_all_jobs_used()
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assertf(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TUBE_ASSIGN(i32, i32) #1

declare dso_local i32 @make_tube(i8*) #1

declare dso_local i32 @make_job(i32, i32, i32, i32, i32) #1

declare dso_local i32 @assertf(i32, i8*) #1

declare dso_local i32 @get_all_jobs_used(...) #1

declare dso_local i32 @job_free(i32) #1

declare dso_local i32 @job_find(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
