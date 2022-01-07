; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_opt_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_opt_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"No media specifier was specified in '%s' in option '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@audio_codec_name = common dso_local global i8* null, align 8
@subtitle_codec_name = common dso_local global i8* null, align 8
@video_codec_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid media specifier '%s' in option '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_codec(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @AV_LOG_ERROR, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @av_log(i32* null, i32 %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %33 [
    i32 97, label %27
    i32 115, label %29
    i32 118, label %31
  ]

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** @audio_codec_name, align 8
  br label %40

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** @subtitle_codec_name, align 8
  br label %40

31:                                               ; preds = %20
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** @video_codec_name, align 8
  br label %40

33:                                               ; preds = %20
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @av_log(i32* null, i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %31, %29, %27
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %33, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
