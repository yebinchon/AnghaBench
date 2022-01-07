; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafdec.c_read_pakt_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafdec.c_read_pakt_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_7__*, i32* }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_7__ = type { i32, i64, i64 }

@INT32_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error reading packet table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @read_pakt_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pakt_chunk(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @avio_tell(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @avio_rb64(i32* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @INT32_MAX, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %2
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %3, align 4
  br label %136

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @avio_rb64(i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @avio_rb32(i32* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr i8, i8* %49, i64 %46
  store i8* %50, i8** %48, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @avio_rb32(i32* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr i8, i8* %55, i64 %52
  store i8* %56, i8** %54, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %109, %40
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %66, i64 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %74 = call i32 @av_add_index_entry(%struct.TYPE_8__* %68, i32 %69, i64 %72, i32 0, i32 0, i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %63
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  br label %86

83:                                               ; preds = %63
  %84 = load i32*, i32** %6, align 8
  %85 = call i64 @ff_mp4_read_descr_len(i32* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i64 [ %82, %79 ], [ %85, %83 ]
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  br label %103

100:                                              ; preds = %86
  %101 = load i32*, i32** %6, align 8
  %102 = call i64 @ff_mp4_read_descr_len(i32* %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = phi i64 [ %99, %96 ], [ %102, %100 ]
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %59

112:                                              ; preds = %59
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @avio_tell(i32* %113)
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* %5, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = call i32 @av_log(%struct.TYPE_9__* %120, i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %3, align 4
  br label %136

124:                                              ; preds = %112
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @avio_tell(i32* %129)
  %131 = sub nsw i32 %128, %130
  %132 = call i32 @avio_skip(i32* %125, i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %124, %119, %38
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i8* @avio_rb64(i32*) #1

declare dso_local i64 @avio_rb32(i32*) #1

declare dso_local i32 @av_add_index_entry(%struct.TYPE_8__*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ff_mp4_read_descr_len(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
