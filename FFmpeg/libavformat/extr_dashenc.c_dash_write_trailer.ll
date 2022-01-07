; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_dash_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashenc.c_dash_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, %struct.TYPE_11__**, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i64, i64, %struct.TYPE_12__*, i64, i8*, i8* }
%struct.TYPE_12__ = type { i64, i32, i32, i64, i64, i64 }

@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@SEGMENT_TYPE_MP4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"%smaster.m3u8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @dash_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dash_write_trailer(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 0
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %35, i64 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %41 = call i8* @av_rescale_q(i64 %32, i32 %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %25, %16
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %54, i64 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %60 = call i8* @av_rescale_q(i64 %51, i32 %58, i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %44, %1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %65 = call i32 @dash_flush(%struct.TYPE_14__* %64, i32 1, i32 -1)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %144

70:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %116, %70
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %71
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %6, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dashenc_delete_media_segments(%struct.TYPE_14__* %84, %struct.TYPE_12__* %85, i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dashenc_delete_segment_file(%struct.TYPE_14__* %90, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %77
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SEGMENT_TYPE_MP4, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @get_hls_playlist_name(i8* %106, i32 1024, i8* %109, i32 %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %114 = call i32 @dashenc_delete_file(%struct.TYPE_14__* %112, i8* %113)
  br label %115

115:                                              ; preds = %105, %99, %77
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %71

119:                                              ; preds = %71
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @dashenc_delete_file(%struct.TYPE_14__* %120, i8* %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %119
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @snprintf(i8* %135, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %142 = call i32 @dashenc_delete_file(%struct.TYPE_14__* %140, i8* %141)
  br label %143

143:                                              ; preds = %134, %129, %119
  br label %144

144:                                              ; preds = %143, %63
  ret i32 0
}

declare dso_local i8* @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @dash_flush(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dashenc_delete_media_segments(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @dashenc_delete_segment_file(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @get_hls_playlist_name(i8*, i32, i8*, i32) #1

declare dso_local i32 @dashenc_delete_file(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
