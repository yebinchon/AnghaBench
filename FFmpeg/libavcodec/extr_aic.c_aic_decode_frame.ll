; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_aic_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_aic_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i8* }

@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AIC_HDR_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Too small frame\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid header\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Incorrect slice size %d at %d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error decoding slice at %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*)* @aic_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_13__*
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %34, align 8
  %35 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @AIC_HDR_SIZE, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %44, %52
  %54 = call i32 @FFALIGN(i32 %53, i32 4)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %59, i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %5, align 4
  br label %167

63:                                               ; preds = %4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @aic_decode_header(%struct.TYPE_17__* %64, i32* %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %71, i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %5, align 4
  br label %167

75:                                               ; preds = %63
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = call i32 @ff_thread_get_buffer(%struct.TYPE_16__* %76, %struct.TYPE_14__* %19, i32 0)
  store i32 %77, i32* %17, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %5, align 4
  br label %167

81:                                               ; preds = %75
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @AIC_HDR_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = mul nsw i32 %92, 2
  %94 = call i32 @bytestream2_init(i32* %13, i32* %85, i32 %93)
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %159, %81
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %162

101:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  br label %102

102:                                              ; preds = %150, %101
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %158

108:                                              ; preds = %102
  %109 = call i32 @bytestream2_get_le16(i32* %13)
  %110 = mul nsw i32 %109, 4
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %116, %108
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %120, i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %5, align 4
  br label %167

127:                                              ; preds = %116
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @aic_decode_slice(%struct.TYPE_17__* %128, i32 %129, i32 %130, i32* %134, i32 %135)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %127
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %140, i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load i32, i32* %17, align 4
  store i32 %145, i32* %5, align 4
  br label %167

146:                                              ; preds = %127
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %146
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %15, align 4
  br label %102

158:                                              ; preds = %102
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %95

162:                                              ; preds = %95
  %163 = load i32*, i32** %8, align 8
  store i32 1, i32* %163, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %162, %139, %119, %79, %70, %58
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @aic_decode_header(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @aic_decode_slice(%struct.TYPE_17__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
