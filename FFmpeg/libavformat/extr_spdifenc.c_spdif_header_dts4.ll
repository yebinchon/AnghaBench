; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_header_dts4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifenc.c_spdif_header_dts4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i8* }

@spdif_header_dts4.dtshd_start_code = internal constant [10 x i8] c"\01\00\00\00\00\00\00\00\FE\FE", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HD mode not supported for this format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown DTS sample rate for HD\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [139 x i8] c"Specified HD rate of %d Hz would require an impossible repetition period of %d for the current DTS stream (blocks = %d, sample rate = %d)\0A\00", align 1
@IEC61937_DTSHD = common dso_local global i32 0, align 4
@BURST_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"DTS-HD bitrate too high, temporarily sending core only\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32)* @spdif_header_dts4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_header_dts4(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %25, i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %6, align 4
  br label %193

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %34, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %6, align 4
  br label %193

38:                                               ; preds = %30
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 5
  %44 = mul nsw i32 %41, %43
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @spdif_dts4_subtype(i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %38
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 %58, 5
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %52, i32 %53, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57, i32 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %6, align 4
  br label %193

64:                                               ; preds = %38
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %65, 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @IEC61937_DTSHD, align 4
  %70 = load i32, i32* %15, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 12, %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BURST_HEADER_SIZE, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i64 %77, %83
  br i1 %84, label %85, label %117

85:                                               ; preds = %64
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = load i32, i32* @AV_LOG_WARNING, align 4
  %96 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %94, i32 %95, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 5
  %110 = sdiv i32 %107, %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %116

113:                                              ; preds = %97
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %102
  br label %117

117:                                              ; preds = %116, %85, %64
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %13, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %131, %125
  br label %137

137:                                              ; preds = %136, %122, %117
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 12, %139
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 8
  %148 = call i64 @FFALIGN(i32 %147, i32 16)
  %149 = sub nsw i64 %148, 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 9
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @av_fast_malloc(i64* %153, i32* %155, i32 %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %137
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = call i32 @AVERROR(i32 %165)
  store i32 %166, i32* %6, align 4
  br label %193

167:                                              ; preds = %137
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 7
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @memcpy(i64 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @spdif_header_dts4.dtshd_start_code, i64 0, i64 0), i32 10)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 10
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @AV_WB16(i64 %180, i32 %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 10
  %187 = add i64 %186, 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @memcpy(i64 %187, i8* %190, i32 %191)
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %167, %164, %51, %33, %24
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @spdif_dts4_subtype(i32) #1

declare dso_local i64 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_fast_malloc(i64*, i32*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @AV_WB16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
