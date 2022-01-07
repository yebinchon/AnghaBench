; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ashowinfo.c_dump_audio_service_type.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ashowinfo.c_dump_audio_service_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"audio service type: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid data\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Main Audio Service\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Effects\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Visually Impaired\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Hearing Impaired\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Dialogue\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Commentary\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Emergency\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Voice Over\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Karaoke\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @dump_audio_service_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_audio_service_type(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @AV_LOG_INFO, align 4
  %8 = call i32 @av_log(i32* %6, i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @AV_LOG_INFO, align 4
  %17 = call i32 @av_log(i32* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %61 [
    i32 130, label %25
    i32 134, label %29
    i32 129, label %33
    i32 132, label %37
    i32 135, label %41
    i32 136, label %45
    i32 133, label %49
    i32 128, label %53
    i32 131, label %57
  ]

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @AV_LOG_INFO, align 4
  %28 = call i32 @av_log(i32* %26, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %65

29:                                               ; preds = %18
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @AV_LOG_INFO, align 4
  %32 = call i32 @av_log(i32* %30, i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %65

33:                                               ; preds = %18
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @AV_LOG_INFO, align 4
  %36 = call i32 @av_log(i32* %34, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %65

37:                                               ; preds = %18
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @AV_LOG_INFO, align 4
  %40 = call i32 @av_log(i32* %38, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %65

41:                                               ; preds = %18
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @AV_LOG_INFO, align 4
  %44 = call i32 @av_log(i32* %42, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %65

45:                                               ; preds = %18
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @AV_LOG_INFO, align 4
  %48 = call i32 @av_log(i32* %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %65

49:                                               ; preds = %18
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @AV_LOG_INFO, align 4
  %52 = call i32 @av_log(i32* %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %65

53:                                               ; preds = %18
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @AV_LOG_INFO, align 4
  %56 = call i32 @av_log(i32* %54, i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %65

57:                                               ; preds = %18
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @AV_LOG_INFO, align 4
  %60 = call i32 @av_log(i32* %58, i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %65

61:                                               ; preds = %18
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @AV_LOG_INFO, align 4
  %64 = call i32 @av_log(i32* %62, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %65

65:                                               ; preds = %14, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
