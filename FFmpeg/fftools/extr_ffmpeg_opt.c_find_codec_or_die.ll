; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_find_codec_or_die.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_find_codec_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Matched %s '%s' for codec '%s'.\0A\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Unknown %s '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid %s type '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, i32, i32)* @find_codec_or_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @find_codec_or_die(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TYPE_10__* @avcodec_find_encoder_by_name(i8* %17)
  br label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = call %struct.TYPE_10__* @avcodec_find_decoder_by_name(i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.TYPE_10__* [ %18, %16 ], [ %21, %19 ]
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call %struct.TYPE_9__* @avcodec_descriptor_get_by_name(i8* %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %7, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_10__* @avcodec_find_encoder(i32 %36)
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_10__* @avcodec_find_decoder(i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi %struct.TYPE_10__* [ %37, %33 ], [ %42, %38 ]
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %9, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @av_log(i32* null, i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %54, i32 %57)
  br label %59

59:                                               ; preds = %47, %43
  br label %60

60:                                               ; preds = %59, %26, %22
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @AV_LOG_FATAL, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @av_log(i32* null, i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %65, i8* %66)
  %68 = call i32 @exit_program(i32 1)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @AV_LOG_FATAL, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @av_log(i32* null, i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %78)
  %80 = call i32 @exit_program(i32 1)
  br label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  ret %struct.TYPE_10__* %82
}

declare dso_local %struct.TYPE_10__* @avcodec_find_encoder_by_name(i8*) #1

declare dso_local %struct.TYPE_10__* @avcodec_find_decoder_by_name(i8*) #1

declare dso_local %struct.TYPE_9__* @avcodec_descriptor_get_by_name(i8*) #1

declare dso_local %struct.TYPE_10__* @avcodec_find_encoder(i32) #1

declare dso_local %struct.TYPE_10__* @avcodec_find_decoder(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
