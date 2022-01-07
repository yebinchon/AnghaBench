; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_vpcc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_vpcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Empty VP Codec Configuration box\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported VP Codec Configuration box version %d\0A\00", align 1
@AVCOL_PRI_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_TRC_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_SPC_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@AVCOL_RANGE_MPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @mov_read_vpcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_vpcc(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 %34
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 5
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %43, i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %4, align 4
  br label %124

47:                                               ; preds = %22
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @avio_r8(i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i32, i32* @AV_LOG_WARNING, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %55, i32 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %4, align 4
  br label %124

59:                                               ; preds = %47
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @avio_skip(i32* %60, i32 3)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @avio_skip(i32* %62, i32 2)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @avio_r8(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @avio_r8(i32* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @avio_r8(i32* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @avio_r8(i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @avio_rb16(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %4, align 4
  br label %124

77:                                               ; preds = %59
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @av_color_primaries_name(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @AVCOL_PRI_UNSPECIFIED, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @av_color_transfer_name(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @AVCOL_TRC_UNSPECIFIED, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @av_color_space_name(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @AVCOL_SPC_UNSPECIFIED, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  br label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @AVCOL_RANGE_MPEG, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 4
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %103, %75, %52, %40, %21
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i64 @avio_rb16(i32*) #1

declare dso_local i32 @av_color_primaries_name(i32) #1

declare dso_local i32 @av_color_transfer_name(i32) #1

declare dso_local i32 @av_color_space_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
