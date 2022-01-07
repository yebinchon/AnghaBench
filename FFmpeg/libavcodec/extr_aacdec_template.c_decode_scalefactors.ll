; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_scalefactors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_scalefactors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NOISE_OFFSET = common dso_local global i32 0, align 4
@ZERO_BT = common dso_local global i32 0, align 4
@INTENSITY_BT = common dso_local global i32 0, align 4
@INTENSITY_BT2 = common dso_local global i32 0, align 4
@vlc_scalefactors = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SCALE_DIFF_ZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [114 x i8] c"If you heard an audible artifact, there may be a bug in the decoder. Clipped intensity stereo position (%d -> %d)\00", align 1
@ff_aac_pow2sf_tab = common dso_local global i32* null, align 8
@POW_SF2_ZERO = common dso_local global i32 0, align 4
@NOISE_BT = common dso_local global i32 0, align 4
@NOISE_PRE_BITS = common dso_local global i32 0, align 4
@NOISE_PRE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [99 x i8] c"If you heard an audible artifact, there may be a bug in the decoder. Clipped noise gain (%d -> %d)\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Scalefactor (%d) out of range.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32, %struct.TYPE_6__*, i32*, i32*)* @decode_scalefactors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_scalefactors(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_6__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @NOISE_OFFSET, align 4
  %28 = sub i32 %26, %27
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %29, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %266, %7
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %269

36:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %264, %36
  %38 = load i32, i32* %17, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %265

43:                                               ; preds = %37
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %22, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ZERO_BT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %67, %56
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %22, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = call i32 @FIXR(i32 0)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %18, align 4
  br label %57

72:                                               ; preds = %57
  br label %264

73:                                               ; preds = %43
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @INTENSITY_BT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @INTENSITY_BT2, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %139

89:                                               ; preds = %81, %73
  br label %90

90:                                               ; preds = %133, %89
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %22, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %138

94:                                               ; preds = %90
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vlc_scalefactors, i32 0, i32 0), align 4
  %97 = call i64 @get_vlc2(i32* %95, i32 %96, i32 7, i32 3)
  %98 = load i64, i64* @SCALE_DIFF_ZERO, align 8
  %99 = sub nsw i64 %97, %98
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %99
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @av_clip(i32 %106, i32 -155, i32 100)
  store i32 %107, i32* %20, align 4
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %94
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @avpriv_request_sample(i32 %115, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %94
  %121 = load i32*, i32** @ff_aac_pow2sf_tab, align 8
  %122 = load i32, i32* %20, align 4
  %123 = sub nsw i32 0, %122
  %124 = load i32, i32* @POW_SF2_ZERO, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %18, align 4
  br label %90

138:                                              ; preds = %90
  br label %263

139:                                              ; preds = %81
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @NOISE_BT, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %213

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %207, %147
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %22, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %212

152:                                              ; preds = %148
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %21, align 4
  %155 = icmp sgt i32 %153, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* @NOISE_PRE_BITS, align 4
  %159 = call i64 @get_bits(i32* %157, i32 %158)
  %160 = load i64, i64* @NOISE_PRE, align 8
  %161 = sub nsw i64 %159, %160
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %161
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  br label %178

167:                                              ; preds = %152
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vlc_scalefactors, i32 0, i32 0), align 4
  %170 = call i64 @get_vlc2(i32* %168, i32 %169, i32 7, i32 3)
  %171 = load i64, i64* @SCALE_DIFF_ZERO, align 8
  %172 = sub nsw i64 %170, %171
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %172
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  br label %178

178:                                              ; preds = %167, %156
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @av_clip(i32 %180, i32 -100, i32 155)
  store i32 %181, i32* %20, align 4
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %20, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %178
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @avpriv_request_sample(i32 %189, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %186, %178
  %195 = load i32*, i32** @ff_aac_pow2sf_tab, align 8
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* @POW_SF2_ZERO, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 0, %201
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  br label %207

207:                                              ; preds = %194
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %148

212:                                              ; preds = %148
  br label %262

213:                                              ; preds = %139
  br label %214

214:                                              ; preds = %256, %213
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %261

218:                                              ; preds = %214
  %219 = load i32*, i32** %11, align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vlc_scalefactors, i32 0, i32 0), align 4
  %221 = call i64 @get_vlc2(i32* %219, i32 %220, i32 7, i32 3)
  %222 = load i64, i64* @SCALE_DIFF_ZERO, align 8
  %223 = sub nsw i64 %221, %222
  %224 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %223
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp ugt i32 %230, 255
  br i1 %231, label %232, label %241

232:                                              ; preds = %218
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @AV_LOG_ERROR, align 4
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @av_log(i32 %235, i32 %236, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %240, i32* %8, align 4
  br label %270

241:                                              ; preds = %218
  %242 = load i32*, i32** @ff_aac_pow2sf_tab, align 8
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 100
  %246 = load i32, i32* @POW_SF2_ZERO, align 4
  %247 = add nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %242, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 0, %250
  %252 = load i32*, i32** %10, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %251, i32* %255, align 4
  br label %256

256:                                              ; preds = %241
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  %259 = load i32, i32* %18, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %18, align 4
  br label %214

261:                                              ; preds = %214
  br label %262

262:                                              ; preds = %261, %212
  br label %263

263:                                              ; preds = %262, %138
  br label %264

264:                                              ; preds = %263, %72
  br label %37

265:                                              ; preds = %37
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %16, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %16, align 4
  br label %30

269:                                              ; preds = %30
  store i32 0, i32* %8, align 4
  br label %270

270:                                              ; preds = %269, %232
  %271 = load i32, i32* %8, align 4
  ret i32 %271
}

declare dso_local i32 @FIXR(i32) #1

declare dso_local i64 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*, i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
