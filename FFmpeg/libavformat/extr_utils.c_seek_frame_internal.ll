; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_seek_frame_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_seek_frame_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i32, {}*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }

@AVSEEK_FLAG_BYTE = common dso_local global i32 0, align 4
@AVFMT_NO_BYTE_SEEK = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AVFMT_NOBINSEARCH = common dso_local global i32 0, align 4
@AVFMT_NOGENSEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32, i32)* @seek_frame_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_frame_internal(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @AVSEEK_FLAG_BYTE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AVFMT_NO_BYTE_SEEK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %133

26:                                               ; preds = %16
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = call i32 @ff_read_frame_flush(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @seek_frame_byte(%struct.TYPE_15__* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %133

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = call i32 @av_find_default_stream_index(%struct.TYPE_15__* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %133

43:                                               ; preds = %37
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %46, i64 %48
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AV_TIME_BASE, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = mul nsw i32 %56, %61
  %63 = call i32 @av_rescale(i32 %51, i32 %55, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %43, %34
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = bitcast {}** %68 to i32 (%struct.TYPE_15__*, i32, i32, i32)**
  %70 = load i32 (%struct.TYPE_15__*, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32)** %69, align 8
  %71 = icmp ne i32 (%struct.TYPE_15__*, i32, i32, i32)* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = call i32 @ff_read_frame_flush(%struct.TYPE_15__* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = bitcast {}** %78 to i32 (%struct.TYPE_15__*, i32, i32, i32)**
  %80 = load i32 (%struct.TYPE_15__*, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32)** %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 %80(%struct.TYPE_15__* %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  br label %87

86:                                               ; preds = %64
  store i32 -1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i32, i32* %10, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %133

91:                                               ; preds = %87
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %91
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AVFMT_NOBINSEARCH, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %98
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = call i32 @ff_read_frame_flush(%struct.TYPE_15__* %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ff_seek_frame_binary(%struct.TYPE_15__* %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %5, align 4
  br label %133

115:                                              ; preds = %98, %91
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @AVFMT_NOGENSEARCH, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %115
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = call i32 @ff_read_frame_flush(%struct.TYPE_15__* %125)
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @seek_frame_generic(%struct.TYPE_15__* %127, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %5, align 4
  br label %133

132:                                              ; preds = %115
  store i32 -1, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %124, %107, %90, %42, %26, %25
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @ff_read_frame_flush(%struct.TYPE_15__*) #1

declare dso_local i32 @seek_frame_byte(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @av_find_default_stream_index(%struct.TYPE_15__*) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @ff_seek_frame_binary(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @seek_frame_generic(%struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
