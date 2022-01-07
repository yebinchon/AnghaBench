; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_vsync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cfr\00", align 1
@VSYNC_CFR = common dso_local global i64 0, align 8
@video_sync_method = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"vfr\00", align 1
@VSYNC_VFR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"passthrough\00", align 1
@VSYNC_PASSTHROUGH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@VSYNC_DROP = common dso_local global i64 0, align 8
@VSYNC_AUTO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@OPT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_vsync(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @av_strcasecmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* @VSYNC_CFR, align 8
  store i64 %11, i64* @video_sync_method, align 8
  br label %33

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @av_strcasecmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @VSYNC_VFR, align 8
  store i64 %17, i64* @video_sync_method, align 8
  br label %32

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @av_strcasecmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @VSYNC_PASSTHROUGH, align 8
  store i64 %23, i64* @video_sync_method, align 8
  br label %31

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @av_strcasecmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @VSYNC_DROP, align 8
  store i64 %29, i64* @video_sync_method, align 8
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %31, %16
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i64, i64* @video_sync_method, align 8
  %35 = load i64, i64* @VSYNC_AUTO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @OPT_INT, align 4
  %40 = load i64, i64* @VSYNC_AUTO, align 8
  %41 = load i64, i64* @VSYNC_VFR, align 8
  %42 = call i64 @parse_number_or_die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %38, i32 %39, i64 %40, i64 %41)
  store i64 %42, i64* @video_sync_method, align 8
  br label %43

43:                                               ; preds = %37, %33
  ret i32 0
}

declare dso_local i32 @av_strcasecmp(i8*, i8*) #1

declare dso_local i64 @parse_number_or_die(i8*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
