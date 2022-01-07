; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_id3_has_changed_values.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_id3_has_changed_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.playlist*, i32*, %struct.TYPE_14__*)* @id3_has_changed_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id3_has_changed_values(%struct.playlist* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  br label %11

11:                                               ; preds = %38, %3
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %14 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %15 = call %struct.TYPE_15__* @av_dict_get(i32* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %13, i32 %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.playlist*, %struct.playlist** %5, align 8
  %19 = getelementptr inbounds %struct.playlist, %struct.playlist* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %25 = call %struct.TYPE_15__* @av_dict_get(i32* %20, i8* %23, %struct.TYPE_15__* null, i32 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strcmp(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %17
  store i32 1, i32* %4, align 4
  br label %108

38:                                               ; preds = %28
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = icmp ne %struct.TYPE_14__* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load %struct.playlist*, %struct.playlist** %5, align 8
  %44 = getelementptr inbounds %struct.playlist, %struct.playlist* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = load %struct.playlist*, %struct.playlist** %5, align 8
  %51 = getelementptr inbounds %struct.playlist, %struct.playlist* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %54, i64 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49, %42
  store i32 1, i32* %4, align 4
  br label %108

62:                                               ; preds = %49, %39
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = icmp ne %struct.TYPE_14__* %63, null
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = load %struct.playlist*, %struct.playlist** %5, align 8
  %67 = getelementptr inbounds %struct.playlist, %struct.playlist* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %70, i64 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp ne i32 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %108

86:                                               ; preds = %65
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.playlist*, %struct.playlist** %5, align 8
  %93 = getelementptr inbounds %struct.playlist, %struct.playlist* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %96, i64 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @memcmp(i32 %91, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  store i32 1, i32* %4, align 4
  br label %108

106:                                              ; preds = %86
  br label %107

107:                                              ; preds = %106, %62
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %105, %85, %61, %37
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_15__* @av_dict_get(i32*, i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
