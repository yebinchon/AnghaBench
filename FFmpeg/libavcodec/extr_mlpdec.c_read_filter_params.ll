; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_filter_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_filter_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32*, i8* }

@MAX_IIR_ORDER = common dso_local global i32 0, align 4
@MAX_FIR_ORDER = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Filters may change only once per access unit.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%cIR filter order %d is greater than maximum %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%cIR filter coeff_bits must be between 1 and 16.\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Sum of coeff_bits and coeff_shift for %cIR filter must be 16 or less.\0A\00", align 1
@FIR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"FIR filter has state data specified.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, i32)* @read_filter_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_filter_params(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %38
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %13, align 8
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @MAX_IIR_ORDER, align 4
  br label %46

44:                                               ; preds = %5
  %45 = load i32, i32* @MAX_FIR_ORDER, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 73, i32 70
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %15, align 1
  %53 = load i32, i32* %11, align 4
  %54 = icmp ult i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = call i32 @av_assert0(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = icmp sgt i32 %67, 1
  br i1 %69, label %70, label %77

70:                                               ; preds = %46
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 (i32, i32, i8*, ...) @av_log(i32 %73, i32 %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %6, align 4
  br label %222

77:                                               ; preds = %46
  %78 = load i32*, i32** %8, align 8
  %79 = call i8* @get_bits(i32* %78, i32 4)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i8, i8* %15, align 1
  %90 = sext i8 %89 to i32
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i32, i32, i8*, ...) @av_log(i32 %87, i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %6, align 4
  br label %222

95:                                               ; preds = %77
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %17, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %221

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %18, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = call i8* @get_bits(i32* %114, i32 4)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i8* @get_bits(i32* %118, i32 5)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %19, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = call i8* @get_bits(i32* %121, i32 3)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %101
  %127 = load i32, i32* %19, align 4
  %128 = icmp sgt i32 %127, 16
  br i1 %128, label %129, label %138

129:                                              ; preds = %126, %101
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = load i8, i8* %15, align 1
  %135 = sext i8 %134 to i32
  %136 = call i32 (i32, i32, i8*, ...) @av_log(i32 %132, i32 %133, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %137, i32* %6, align 4
  br label %222

138:                                              ; preds = %126
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %139, %140
  %142 = icmp sgt i32 %141, 16
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = load i8, i8* %15, align 1
  %149 = sext i8 %148 to i32
  %150 = call i32 (i32, i32, i8*, ...) @av_log(i32 %146, i32 %147, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %151, i32* %6, align 4
  br label %222

152:                                              ; preds = %138
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %168, %152
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %153
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @get_sbits(i32* %158, i32 %159)
  %161 = load i32, i32* %20, align 4
  %162 = shl i32 1, %161
  %163 = mul nsw i32 %160, %162
  %164 = load i32*, i32** %18, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %153

171:                                              ; preds = %153
  %172 = load i32*, i32** %8, align 8
  %173 = call i64 @get_bits1(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %220

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @FIR, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @AV_LOG_ERROR, align 4
  %184 = call i32 (i32, i32, i8*, ...) @av_log(i32 %182, i32 %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %185 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %185, i32* %6, align 4
  br label %222

186:                                              ; preds = %175
  %187 = load i32*, i32** %8, align 8
  %188 = call i8* @get_bits(i32* %187, i32 4)
  %189 = ptrtoint i8* %188 to i32
  store i32 %189, i32* %21, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = call i8* @get_bits(i32* %190, i32 4)
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %193

193:                                              ; preds = %216, %186
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %17, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %193
  %198 = load i32, i32* %21, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %21, align 4
  %203 = call i32 @get_sbits(i32* %201, i32 %202)
  %204 = load i32, i32* %22, align 4
  %205 = shl i32 1, %204
  %206 = mul nsw i32 %203, %205
  br label %208

207:                                              ; preds = %197
  br label %208

208:                                              ; preds = %207, %200
  %209 = phi i32 [ %206, %200 ], [ 0, %207 ]
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %16, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  br label %216

216:                                              ; preds = %208
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  br label %193

219:                                              ; preds = %193
  br label %220

220:                                              ; preds = %219, %171
  br label %221

221:                                              ; preds = %220, %95
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %221, %179, %143, %129, %84, %70
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
