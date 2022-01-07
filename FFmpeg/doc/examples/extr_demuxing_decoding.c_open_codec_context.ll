; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_demuxing_decoding.c_open_codec_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_demuxing_decoding.c_open_codec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not find %s stream in input file '%s'\0A\00", align 1
@src_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to find %s codec\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to allocate the %s codec context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to copy %s codec parameters to decoder context\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"refcounted_frames\00", align 1
@refcount = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to open %s codec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, %struct.TYPE_7__*, i32)* @open_codec_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_codec_context(i32* %0, i32** %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @av_find_best_stream(%struct.TYPE_7__* %15, i32 %16, i32 -1, i32 -1, i32* null, i32 0)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @av_get_media_type_string(i32 %22)
  %24 = load i8*, i8** @src_filename, align 8
  %25 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %100

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %12, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @avcodec_find_decoder(i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %27
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @av_get_media_type_string(i32 %46)
  %48 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %5, align 4
  br label %100

51:                                               ; preds = %27
  %52 = load i32*, i32** %13, align 8
  %53 = call i32* @avcodec_alloc_context3(i32* %52)
  %54 = load i32**, i32*** %7, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32**, i32*** %7, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i8* @av_get_media_type_string(i32 %60)
  %62 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %5, align 4
  br label %100

65:                                               ; preds = %51
  %66 = load i32**, i32*** %7, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 @avcodec_parameters_to_context(i32* %67, %struct.TYPE_8__* %70)
  store i32 %71, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i8* @av_get_media_type_string(i32 %75)
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %100

79:                                               ; preds = %65
  %80 = load i64, i64* @refcount, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %84 = call i32 @av_dict_set(i32** %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %83, i32 0)
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @avcodec_open2(i32* %86, i32* %87, i32** %14)
  store i32 %88, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i8* @av_get_media_type_string(i32 %92)
  %94 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %100

96:                                               ; preds = %79
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %90, %73, %58, %44, %20
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @av_find_best_stream(%struct.TYPE_7__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @av_get_media_type_string(i32) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @avcodec_parameters_to_context(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @avcodec_open2(i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
