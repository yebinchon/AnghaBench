; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_on2avc_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_on2avc_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32* }

@ON2AVC_SUBFRAME_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid subframe size %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No subframes present\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_19__*)* @on2avc_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on2avc_decode_frame(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %10, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %13, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %4
  %35 = load i32, i32* @ON2AVC_SUBFRAME_SIZE, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = call i32 @ff_get_buffer(%struct.TYPE_21__* %38, %struct.TYPE_20__* %39, i32 0)
  store i32 %40, i32* %18, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %5, align 4
  br label %129

44:                                               ; preds = %34
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %49 = call i32 @on2avc_decode_subframe(%struct.TYPE_17__* %45, i32* %46, i32 %47, %struct.TYPE_20__* %48, i32 0)
  store i32 %49, i32* %18, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %5, align 4
  br label %129

53:                                               ; preds = %44
  br label %126

54:                                               ; preds = %4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @bytestream2_init(%struct.TYPE_18__* %14, i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %75, %54
  %59 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_18__* %14)
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = call i32 @bytestream2_get_le16(%struct.TYPE_18__* %14)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_18__* %14)
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %70, i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %5, align 4
  br label %129

75:                                               ; preds = %65
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @bytestream2_skip(%struct.TYPE_18__* %14, i32 %78)
  br label %58

80:                                               ; preds = %58
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %84, i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %5, align 4
  br label %129

88:                                               ; preds = %80
  %89 = load i32, i32* @ON2AVC_SUBFRAME_SIZE, align 4
  %90 = load i32, i32* %15, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %96 = call i32 @ff_get_buffer(%struct.TYPE_21__* %94, %struct.TYPE_20__* %95, i32 0)
  store i32 %96, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %5, align 4
  br label %129

100:                                              ; preds = %88
  store i32 0, i32* %17, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @bytestream2_init(%struct.TYPE_18__* %14, i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %119, %100
  %105 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_18__* %14)
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = call i32 @bytestream2_get_le16(%struct.TYPE_18__* %14)
  store i32 %108, i32* %16, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @on2avc_decode_subframe(%struct.TYPE_17__* %109, i32* %111, i32 %112, %struct.TYPE_20__* %113, i32 %114)
  store i32 %115, i32* %18, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %5, align 4
  br label %129

119:                                              ; preds = %107
  %120 = load i32, i32* @ON2AVC_SUBFRAME_SIZE, align 4
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @bytestream2_skip(%struct.TYPE_18__* %14, i32 %123)
  br label %104

125:                                              ; preds = %104
  br label %126

126:                                              ; preds = %125, %53
  %127 = load i32*, i32** %8, align 8
  store i32 1, i32* %127, align 4
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %117, %98, %83, %69, %51, %42
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @on2avc_decode_subframe(%struct.TYPE_17__*, i32*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bytestream2_init(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_18__*) #1

declare dso_local i32 @bytestream2_get_le16(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
