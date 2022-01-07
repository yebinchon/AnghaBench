; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_parse_audio_var.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_parse_audio_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"__DIR_COUNT\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AUDIO_FORMAT\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"COMPRESSION\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"DEFAULT_VOL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"NUM_CHANNELS\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"SAMPLE_RATE\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"SAMPLE_WIDTH\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i32)* @parse_audio_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_audio_var(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @var_read_int(i32* %22, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %107

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @var_read_int(i32* %32, i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %106

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @var_read_int(i32* %42, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %105

47:                                               ; preds = %37
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @var_read_metadata(%struct.TYPE_14__* %52, i8* %53, i32 %54)
  br label %104

56:                                               ; preds = %47
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @var_read_int(i32* %63, i32 %64)
  %66 = call i32 @set_channels(%struct.TYPE_14__* %61, %struct.TYPE_13__* %62, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %108

67:                                               ; preds = %56
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @var_read_int(i32* %72, i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %79, i32 33, i32 1, i32 %84)
  br label %102

86:                                               ; preds = %67
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @var_read_int(i32* %91, i32 %92)
  %94 = mul nsw i32 %93, 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %101

99:                                               ; preds = %86
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %5, align 4
  br label %108

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %71
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %51
  br label %105

105:                                              ; preds = %104, %41
  br label %106

106:                                              ; preds = %105, %31
  br label %107

107:                                              ; preds = %106, %21
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %99, %60
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @var_read_int(i32*, i32) #1

declare dso_local i32 @var_read_metadata(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @set_channels(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
