; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_mdhd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_mdhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Multiple mdhd?\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Version %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Invalid mdhd time scale %d, defaulting to 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mov_read_mdhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_mdhd(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast [4 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 4, i1 false)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %27, i64 %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %8, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %9, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %22
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %47, i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %4, align 4
  br label %133

51:                                               ; preds = %22
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @avio_r8(i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @avpriv_request_sample(%struct.TYPE_11__* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %62, i32* %4, align 4
  br label %133

63:                                               ; preds = %51
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @avio_rb24(i32* %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = call i8* @avio_rb64(i32* %69)
  store i8* %70, i8** %13, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i8* @avio_rb64(i32* %71)
  br label %78

73:                                               ; preds = %63
  %74 = load i32*, i32** %6, align 8
  %75 = call i8* @avio_rb32(i32* %74)
  store i8* %75, i8** %13, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i8* @avio_rb32(i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i32 @mov_metadata_creation_time(i32* %80, i8* %81, %struct.TYPE_11__* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i8* @avio_rb32(i32* %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %78
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %98, i32 %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %95, %78
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %6, align 8
  %111 = call i8* @avio_rb64(i32* %110)
  br label %115

112:                                              ; preds = %106
  %113 = load i32*, i32** %6, align 8
  %114 = call i8* @avio_rb32(i32* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i8* [ %111, %109 ], [ %114, %112 ]
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @avio_rb16(i32* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %123 = call i64 @ff_mov_lang_to_iso639(i32 %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %129 = call i32 @av_dict_set(i32* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %128, i32 0)
  br label %130

130:                                              ; preds = %125, %115
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @avio_rb16(i32* %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %56, %44, %21
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #2

declare dso_local i32 @avio_r8(i32*) #2

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i32 @avio_rb24(i32*) #2

declare dso_local i8* @avio_rb64(i32*) #2

declare dso_local i8* @avio_rb32(i32*) #2

declare dso_local i32 @mov_metadata_creation_time(i32*, i8*, %struct.TYPE_11__*) #2

declare dso_local i32 @avio_rb16(i32*) #2

declare dso_local i64 @ff_mov_lang_to_iso639(i32, i8*) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
