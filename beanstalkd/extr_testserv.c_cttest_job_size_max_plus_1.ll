; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_job_size_max_plus_1.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_job_size_max_plus_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JOB_DATA_SIZE_LIMIT_MAX = common dso_local global i32 0, align 4
@job_data_size_limit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"put 0 0 0 1073741825\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"JOB_TOO_BIG\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_job_size_max_plus_1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1048577 x i8], align 16
  %5 = alloca i32, align 4
  %6 = load i32, i32* @JOB_DATA_SIZE_LIMIT_MAX, align 4
  store i32 %6, i32* @job_data_size_limit, align 4
  %7 = call i32 (...) @SERVER()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @mustdiallocal(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @mustsend(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1048576, i32* %3, align 4
  %12 = getelementptr inbounds [1048577 x i8], [1048577 x i8]* %4, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i8 signext 97, i32 1048576)
  %14 = getelementptr inbounds [1048577 x i8], [1048577 x i8]* %4, i64 0, i64 1048576
  store i8 0, i8* %14, align 16
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %23, %0
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @JOB_DATA_SIZE_LIMIT_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = getelementptr inbounds [1048577 x i8], [1048577 x i8]* %4, i64 0, i64 0
  %22 = call i32 @mustsend(i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1048576
  store i32 %25, i32* %5, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @mustsend(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @mustsend(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @ckresp(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @ckresp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
