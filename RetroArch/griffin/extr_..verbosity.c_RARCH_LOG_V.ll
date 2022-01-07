; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..verbosity.c_RARCH_LOG_V.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..verbosity.c_RARCH_LOG_V.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity_log_level = common dso_local global i32 0, align 4
@FILE_PATH_LOG_INFO = common dso_local global i8* null, align 8
@log_file_fp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@ANDROID_LOG_ERROR = common dso_local global i32 0, align 4
@ANDROID_LOG_INFO = common dso_local global i32 0, align 4
@ANDROID_LOG_WARN = common dso_local global i32 0, align 4
@ASL_KEY_READ_UID = common dso_local global i32 0, align 4
@ASL_LEVEL_NOTICE = common dso_local global i32 0, align 4
@ASL_OPT_NO_DELAY = common dso_local global i32 0, align 4
@ASL_OPT_STDERR = common dso_local global i32 0, align 4
@ASL_TYPE_MSG = common dso_local global i32 0, align 4
@FILE_PATH_LOG_ERROR = common dso_local global i32 0, align 4
@FILE_PATH_LOG_WARN = common dso_local global i32 0, align 4
@FILE_PATH_PROGRAM_NAME = common dso_local global i8* null, align 8
@log_file_initialized = common dso_local global i64 0, align 8
@logging_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RARCH_LOG_V(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @verbosity_log_level, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %34

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  br label %19

17:                                               ; preds = %12
  %18 = load i8*, i8** @FILE_PATH_LOG_INFO, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i8* [ %16, %15 ], [ %18, %17 ]
  store i8* %20, i8** %7, align 8
  %21 = load i32*, i32** @log_file_fp, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @vfprintf(i32* %28, i8* %29, i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @fflush(i32* %32)
  br label %34

34:                                               ; preds = %11, %24, %19
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @vfprintf(i32*, i8*, i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
