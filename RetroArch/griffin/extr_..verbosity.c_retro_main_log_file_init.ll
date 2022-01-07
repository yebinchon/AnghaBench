; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..verbosity.c_retro_main_log_file_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..verbosity.c_retro_main_log_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_file_initialized = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@log_file_fp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to open system event log file: %s\0A\00", align 1
@log_file_buf = common dso_local global i64 0, align 8
@_IOFBF = common dso_local global i32 0, align 4
@logging_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retro_main_log_file_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @log_file_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %34

8:                                                ; preds = %2
  %9 = load i32*, i32** @stderr, align 8
  store i32* %9, i32** @log_file_fp, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %34

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %19 = call i64 @fopen_utf8(i8* %14, i8* %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** @log_file_fp, align 8
  %21 = load i32*, i32** @log_file_fp, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = load i32*, i32** @stderr, align 8
  store i32* %24, i32** @log_file_fp, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %34

27:                                               ; preds = %13
  store i32 1, i32* @log_file_initialized, align 4
  %28 = call i64 @calloc(i32 1, i32 16384)
  store i64 %28, i64* @log_file_buf, align 8
  %29 = load i32*, i32** @log_file_fp, align 8
  %30 = load i64, i64* @log_file_buf, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i32, i32* @_IOFBF, align 4
  %33 = call i32 @setvbuf(i32* %29, i8* %31, i32 %32, i32 16384)
  br label %34

34:                                               ; preds = %27, %23, %12, %7
  ret void
}

declare dso_local i64 @fopen_utf8(i8*, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @setvbuf(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
