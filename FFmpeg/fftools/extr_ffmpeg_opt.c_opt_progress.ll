; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_progress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pipe:\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@int_cb = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to open progress URL \22%s\22: %s\0A\00", align 1
@progress_avio = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_progress(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %17 = call i32 @avio_open2(i32** %8, i8* %15, i32 %16, i32* @int_cb, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @av_err2str(i32 %23)
  %25 = call i32 @av_log(i32* null, i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %22, i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %14
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** @progress_avio, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
