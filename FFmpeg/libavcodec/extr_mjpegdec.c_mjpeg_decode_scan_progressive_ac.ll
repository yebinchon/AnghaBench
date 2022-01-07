; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_mjpeg_decode_scan_progressive_ac.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_mjpeg_decode_scan_progressive_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64*, i64*, i32, i32*, i32, i32, i32*, i64, i64, i32, i32**, i32**, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SS/SE %d/%d is invalid\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@block = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"bitstream truncated in mjpeg_decode_scan_progressive_ac\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"error y=%d x=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32)* @mjpeg_decode_scan_progressive_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mjpeg_decode_scan_progressive_ac(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 13
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %27, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %16, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp sge i32 %41, 0
  br label %43

43:                                               ; preds = %40, %37, %5
  %44 = phi i1 [ false, %37 ], [ false, %5 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @av_assert0(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 63
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %43
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i32, i8*, ...) @av_log(i32 %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %6, align 4
  br label %217

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 2, %64
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 1, %67
  %69 = sub i64 %65, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %69
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %213, %62
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %216

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %87, %94
  store i32 %95, i32* %17, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 12
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32*, i32** @block, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32** @int16_t(i32 %107)
  %109 = getelementptr inbounds i32*, i32** %108, i64 64
  store i32* %105, i32** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 11
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32* %119, i32** %18, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 10
  %122 = call i64 @get_bits_left(i32* %121)
  %123 = icmp sle i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %86
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AV_LOG_ERROR, align 4
  %129 = call i32 (i32, i32, i8*, ...) @av_log(i32 %127, i32 %128, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %130, i32* %6, align 4
  br label %217

131:                                              ; preds = %86
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %205, %131
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %212

138:                                              ; preds = %132
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 9
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %143, %138
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %154
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %159 = load i32*, i32** @block, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %18, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %16, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @decode_block_refinement(%struct.TYPE_6__* %158, i32 %160, i32* %161, i32 %166, i32* %167, i32 %168, i32 %169, i32 %170, i32* %14)
  store i32 %171, i32* %19, align 4
  br label %187

172:                                              ; preds = %154
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %174 = load i32*, i32** @block, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %18, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @decode_block_progressive(%struct.TYPE_6__* %173, i32 %175, i32* %176, i32 %181, i32* %182, i32 %183, i32 %184, i32 %185, i32* %14)
  store i32 %186, i32* %19, align 4
  br label %187

187:                                              ; preds = %172, %157
  %188 = load i32, i32* %19, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 (i32, i32, i8*, ...) @av_log(i32 %193, i32 %194, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %196)
  %198 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %198, i32* %6, align 4
  br label %217

199:                                              ; preds = %187
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = call i64 @handle_rstn(%struct.TYPE_6__* %200, i32 0)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 0, i32* %14, align 4
  br label %204

204:                                              ; preds = %203, %199
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  %208 = load i32*, i32** @block, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** @block, align 8
  %210 = load i32*, i32** %18, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %18, align 8
  br label %132

212:                                              ; preds = %132
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %80

216:                                              ; preds = %80
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %216, %190, %124, %53
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32** @int16_t(i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @decode_block_refinement(%struct.TYPE_6__*, i32, i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @decode_block_progressive(%struct.TYPE_6__*, i32, i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @handle_rstn(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
