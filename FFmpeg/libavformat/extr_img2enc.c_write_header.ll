; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2enc.c_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2enc.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AV_CODEC_ID_GIF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@AV_CODEC_ID_FITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"fits\00", align 1
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %12, i64 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_13__* @av_pix_fmt_desc_get(i32 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @av_strlcpy(i32 %23, i32 %26, i32 4)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AVFMT_NOFILE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_CODEC_ID_GIF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  br label %111

53:                                               ; preds = %42
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AV_CODEC_ID_FITS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  br label %110

64:                                               ; preds = %53
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %64
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @strrchr(i32 %75, i8 signext 46)
  store i8* %76, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %72
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i32 @av_strcasecmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %102, 3
  br label %104

104:                                              ; preds = %99, %92, %89, %84, %79, %72
  %105 = phi i1 [ false, %92 ], [ false, %89 ], [ false, %84 ], [ false, %79 ], [ false, %72 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %64
  br label %110

110:                                              ; preds = %109, %61
  br label %111

111:                                              ; preds = %110, %50
  ret i32 0
}

declare dso_local %struct.TYPE_13__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_strlcpy(i32, i32, i32) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @av_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
