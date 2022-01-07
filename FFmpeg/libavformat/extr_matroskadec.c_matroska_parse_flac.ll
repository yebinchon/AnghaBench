; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_flac.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_flac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@FLAC_STREAMINFO_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid FLAC private data\0A\00", align 1
@FLAC_METADATA_TYPE_VORBIS_COMMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"WAVEFORMATEXTENSIBLE_CHANNEL_MASK\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Invalid value of WAVEFORMATEXTENSIBLE_CHANNEL_MASK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32*)* @matroska_parse_flac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_parse_flac(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %30 = add nsw i32 8, %29
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 127
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32, %3
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @AV_LOG_WARNING, align 4
  %41 = call i32 @av_log(i32* %39, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  store i32 0, i32* %4, align 4
  br label %126

45:                                               ; preds = %32
  %46 = load i32*, i32** %7, align 8
  store i32 8, i32* %46, align 4
  %47 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %48 = add nsw i32 8, %47
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %9, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %117, %45
  %66 = load i32, i32* %10, align 4
  %67 = icmp sge i32 %66, 4
  br i1 %67, label %68, label %125

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @flac_parse_block_header(i32* %69, i32* %11, i32* %12, i32* %13)
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 4
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %126

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @FLAC_METADATA_TYPE_VORBIS_COMMENT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %79
  store i32* null, i32** %14, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @ff_vorbis_comment(i32* %84, i32** %14, i32* %85, i32 %86, i32 0)
  %88 = load i32*, i32** %14, align 8
  %89 = call %struct.TYPE_12__* @av_dict_get(i32* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %15, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %115

92:                                               ; preds = %83
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strtol(i32 %95, i32* null, i32 0)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, -262144
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %92
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* @AV_LOG_WARNING, align 4
  %107 = call i32 @av_log(i32* %105, i32 %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %114

108:                                              ; preds = %99
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %104
  br label %115

115:                                              ; preds = %114, %83
  %116 = call i32 @av_dict_free(i32** %14)
  br label %117

117:                                              ; preds = %115, %79
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %9, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %65

125:                                              ; preds = %65
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %78, %38
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @flac_parse_block_header(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ff_vorbis_comment(i32*, i32**, i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
