; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_component.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_16__*, %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__*** }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32, %struct.TYPE_17__**, i32*, i32, i32)* }

@MAX_DWT_LEVELS = common dso_local global i32 0, align 4
@DIRAC_MAX_QUANT_INDEX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported quant %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@decode_subband_arith = common dso_local global i32 0, align 4
@decode_subband_golomb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @decode_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_component(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %6, align 8
  %20 = load i32, i32* @MAX_DWT_LEVELS, align 4
  %21 = mul nsw i32 3, %20
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca %struct.TYPE_17__*, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @MAX_DWT_LEVELS, align 4
  %27 = mul nsw i32 3, %26
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %202, %2
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %205

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %150, %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %153

46:                                               ; preds = %43
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %54, i64 %56
  %58 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %58, i64 %60
  %62 = bitcast %struct.TYPE_17__** %61 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %15, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %25, i64 %66
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = call i32 @align_get_bits(%struct.TYPE_20__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = call i8* @get_interleaved_ue_golomb(%struct.TYPE_20__* %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %46
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = call i8* @get_interleaved_ue_golomb(%struct.TYPE_20__* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DIRAC_MAX_QUANT_INDEX, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %81
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @av_log(%struct.TYPE_19__* %97, i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %252

106:                                              ; preds = %81
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 3
  %109 = call i32 @align_get_bits(%struct.TYPE_20__* %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = call i32 @get_bits_count(%struct.TYPE_20__* %115)
  %117 = sdiv i32 %116, 8
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %113, %118
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 3
  %127 = call i32 @get_bits_left(%struct.TYPE_20__* %126)
  %128 = sdiv i32 %127, 8
  %129 = call i32 @FFMAX(i32 %128, i32 0)
  %130 = icmp sgt i32 %124, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %106
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = call i32 @get_bits_left(%struct.TYPE_20__* %133)
  %135 = sdiv i32 %134, 8
  %136 = call i32 @FFMAX(i32 %135, i32 0)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %131, %106
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %146, 8
  %148 = call i32 @skip_bits_long(%struct.TYPE_20__* %143, i32 %147)
  br label %149

149:                                              ; preds = %141, %46
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %43

153:                                              ; preds = %43
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %201

158:                                              ; preds = %153
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32 (%struct.TYPE_19__*, i32, %struct.TYPE_17__**, i32*, i32, i32)*, i32 (%struct.TYPE_19__*, i32, %struct.TYPE_17__**, i32*, i32, i32)** %160, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %163 = load i32, i32* @decode_subband_arith, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_17__***, %struct.TYPE_17__**** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_17__**, %struct.TYPE_17__*** %171, i64 %173
  %175 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %175, i64 %181
  %183 = load i32, i32* %10, align 4
  %184 = mul nsw i32 3, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %30, i64 %185
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %186, i64 %192
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = sub nsw i32 4, %198
  %200 = call i32 %161(%struct.TYPE_19__* %162, i32 %163, %struct.TYPE_17__** %182, i32* %193, i32 %199, i32 16)
  br label %201

201:                                              ; preds = %158, %153
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %31

205:                                              ; preds = %31
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i32 (%struct.TYPE_19__*, i32, %struct.TYPE_17__**, i32*, i32, i32)*, i32 (%struct.TYPE_19__*, i32, %struct.TYPE_17__**, i32*, i32, i32)** %212, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %215 = load i32, i32* @decode_subband_golomb, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i32 %213(%struct.TYPE_19__* %214, i32 %215, %struct.TYPE_17__** %25, i32* %30, i32 %216, i32 8)
  br label %218

218:                                              ; preds = %210, %205
  store i32 0, i32* %13, align 4
  br label %219

219:                                              ; preds = %237, %218
  %220 = load i32, i32* %13, align 4
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = mul nsw i32 %223, 3
  %225 = add nsw i32 %224, 1
  %226 = icmp slt i32 %220, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %219
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %30, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %14, align 4
  br label %236

236:                                              ; preds = %233, %227
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %13, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %13, align 4
  br label %219

240:                                              ; preds = %219
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 %244, 3
  %246 = add nsw i32 %245, 1
  %247 = sdiv i32 %246, 2
  %248 = icmp sgt i32 %241, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %240
  %250 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %250, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %252

251:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %252

252:                                              ; preds = %251, %249, %94
  %253 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %253)
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @align_get_bits(%struct.TYPE_20__*) #2

declare dso_local i8* @get_interleaved_ue_golomb(%struct.TYPE_20__*) #2

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i32) #2

declare dso_local i32 @get_bits_count(%struct.TYPE_20__*) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @get_bits_left(%struct.TYPE_20__*) #2

declare dso_local i32 @skip_bits_long(%struct.TYPE_20__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
