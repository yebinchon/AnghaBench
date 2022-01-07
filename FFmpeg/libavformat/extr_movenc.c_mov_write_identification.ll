; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_identification.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_identification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@MODE_PSP = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"PSP mode need one video and one audio stream\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*)* @mov_write_identification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_identification(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = call i32 @mov_write_ftyp_tag(i32* %15, %struct.TYPE_13__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MODE_PSP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %69, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %33, i64 %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %11, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = call i64 @is_cover_image(%struct.TYPE_12__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %69

42:                                               ; preds = %30
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %68

53:                                               ; preds = %42
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %24

72:                                               ; preds = %24
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78, %75, %72
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 @av_log(%struct.TYPE_13__* %82, i32 %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %3, align 4
  br label %92

87:                                               ; preds = %78
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = call i32 @mov_write_uuidprof_tag(i32* %88, %struct.TYPE_13__* %89)
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %87, %81
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @mov_write_ftyp_tag(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @is_cover_image(%struct.TYPE_12__*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @mov_write_uuidprof_tag(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
