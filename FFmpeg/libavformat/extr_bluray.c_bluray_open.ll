; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_bluray.c_bluray_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_bluray.c_bluray_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@BLURAY_PROTO_PREFIX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bd_open() failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TITLES_RELEVANT = common dso_local global i32 0, align 4
@MIN_PLAYLIST_LENGTH = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%d usable playlists:\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"playlist %05d.mpls (%d:%02d:%02d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"selected %05d.mpls\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"bd_select_playlist(%05d.mpls) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @bluray_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluray_open(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @BLURAY_PROTO_PREFIX, align 4
  %20 = call i32 @av_strstart(i8* %18, i32 %19, i8** %10)
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @bd_open(i8* %21, i32* null)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %30, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %169

35:                                               ; preds = %3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i64 @check_disc_info(%struct.TYPE_9__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EIO, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %169

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TITLES_RELEVANT, align 4
  %47 = load i32, i32* @MIN_PLAYLIST_LENGTH, align 4
  %48 = call i32 @bd_get_titles(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = load i32, i32* @AV_LOG_INFO, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @EIO, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %169

58:                                               ; preds = %42
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %123

63:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %113, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %116

68:                                               ; preds = %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call %struct.TYPE_11__* @bd_get_title_info(i32 %71, i32 %72, i32 0)
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %13, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = load i32, i32* @AV_LOG_INFO, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 90000
  %83 = sdiv i32 %82, 3600
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 90000
  %88 = srem i32 %87, 3600
  %89 = sdiv i32 %88, 60
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 90000
  %94 = srem i32 %93, 60
  %95 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %74, i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %83, i32 %89, i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %68
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %101, %68
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %112 = call i32 @bd_free_title_info(%struct.TYPE_11__* %111)
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %64

116:                                              ; preds = %64
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = load i32, i32* @AV_LOG_INFO, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %117, i32 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %116, %58
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @bd_select_playlist(i32 %126, i32 %129)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %133, i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = call i32 @AVERROR(i32 %139)
  store i32 %140, i32* %4, align 4
  br label %169

141:                                              ; preds = %123
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp sge i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @bd_select_angle(i32 %149, i64 %152)
  br label %154

154:                                              ; preds = %146, %141
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 1
  %167 = call i32 @bd_seek_chapter(i32 %162, i32 %166)
  br label %168

168:                                              ; preds = %159, %154
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %132, %55, %39, %29
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @av_strstart(i8*, i32, i8**) #1

declare dso_local i32 @bd_open(i8*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @check_disc_info(%struct.TYPE_9__*) #1

declare dso_local i32 @bd_get_titles(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @bd_get_title_info(i32, i32, i32) #1

declare dso_local i32 @bd_free_title_info(%struct.TYPE_11__*) #1

declare dso_local i64 @bd_select_playlist(i32, i32) #1

declare dso_local i32 @bd_select_angle(i32, i64) #1

declare dso_local i32 @bd_seek_chapter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
