; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_test-latency.c_main.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_test-latency.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"MYSQL_TEST_USER\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"MYSQL_TEST_PASSWORD\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"MYSQL_TEST_DB\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"MYSQL_TEST_HOST\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@log_func = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"benchmark %s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i8* @getenv_def(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %7, align 8
  %12 = call i8* @getenv_def(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = call i8* @getenv_def(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %13, i8** %9, align 8
  %14 = call i8* @getenv_def(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @log_func, align 4
  %16 = call i32 @g_log_set_default_handler(i32 %15, i32* null)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @START_TIMING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %21, i32 3306)
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (i8*, i32, ...) @test_server(i8* %23, i32 3306, i8* %24, i8* %25, i8* %26)
  %28 = call i32 @STOP_TIMING(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @START_TIMING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %29, i32 4040)
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 (i8*, i32, ...) @test_server(i8* %31, i32 4040, i8* %32, i8* %33, i8* %34)
  %36 = call i32 @STOP_TIMING(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %17

40:                                               ; preds = %17
  ret i32 0
}

declare dso_local i8* @getenv_def(i8*, i8*) #1

declare dso_local i32 @g_log_set_default_handler(i32, i32*) #1

declare dso_local i32 @START_TIMING(i8*, i8*, i32) #1

declare dso_local i32 @test_server(i8*, i32, ...) #1

declare dso_local i32 @STOP_TIMING(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
