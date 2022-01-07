; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_ff_silk_decode_superframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_ff_silk_decode_superframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@OPUS_BANDWIDTH_WIDEBAND = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid parameters passed to the SILK decoder.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"LBRR frames\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@SILK_HISTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_silk_decode_superframe(%struct.TYPE_6__* %0, i32* %1, float** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x [6 x i32]], align 16
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store float** %2, float*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @OPUS_BANDWIDTH_WIDEBAND, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %13, align 4
  %27 = icmp sgt i32 %26, 60
  br i1 %27, label %28, label %36

28:                                               ; preds = %25, %22, %6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = call i32 @av_log(i32 %31, i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %277

36:                                               ; preds = %25
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 20
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 1, %39
  %41 = load i32, i32* %13, align 4
  %42 = icmp sgt i32 %41, 40
  %43 = zext i1 %42 to i32
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %16, align 4
  %47 = sdiv i32 %45, %46
  %48 = sdiv i32 %47, 5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 2
  %53 = mul i32 20, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @OPUS_BANDWIDTH_WIDEBAND, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %36
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 1
  %84 = call i32 @silk_flush_frame(%struct.TYPE_7__* %83)
  br label %85

85:                                               ; preds = %79, %36
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %17, align 4
  br label %89

89:                                               ; preds = %128, %85
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %131

93:                                               ; preds = %89
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %107, %93
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @ff_opus_rc_dec_log(i32* %99, i32 1)
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %14, i64 0, i64 %102
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %103, i64 0, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %18, align 4
  br label %94

110:                                              ; preds = %94
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @ff_opus_rc_dec_log(i32* %111, i32 1)
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @avpriv_report_missing_feature(i32 %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %126, i32* %7, align 4
  br label %277

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %89

131:                                              ; preds = %89
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %268, %131
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %271

136:                                              ; preds = %132
  store i32 0, i32* %18, align 4
  br label %137

137:                                              ; preds = %168, %136
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  %146 = xor i1 %145, true
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi i1 [ false, %137 ], [ %146, %141 ]
  br i1 %148, label %149, label %171

149:                                              ; preds = %147
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %14, i64 0, i64 %156
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [6 x i32], [6 x i32]* %157, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %14, i64 0, i64 1
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [6 x i32], [6 x i32]* %162, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @silk_decode_frame(%struct.TYPE_6__* %150, i32* %151, i32 %152, i32 %153, i32 %154, i32 %161, i32 %166)
  br label %168

168:                                              ; preds = %149
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %18, align 4
  br label %137

171:                                              ; preds = %147
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %171
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 1
  %189 = call i32 @silk_flush_frame(%struct.TYPE_7__* %188)
  br label %190

190:                                              ; preds = %184, %176, %171
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %242

198:                                              ; preds = %193, %190
  store i32 0, i32* %18, align 4
  br label %199

199:                                              ; preds = %238, %198
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %241

205:                                              ; preds = %199
  %206 = load float**, float*** %10, align 8
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float*, float** %206, i64 %208
  %210 = load float*, float** %209, align 8
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 %211, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %210, i64 %216
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @SILK_HISTORY, align 4
  %225 = add nsw i32 %223, %224
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %225, %228
  %230 = sub nsw i32 %229, 2
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = mul i64 %234, 4
  %236 = trunc i64 %235 to i32
  %237 = call i32 @memcpy(float* %217, i32 %230, i32 %236)
  br label %238

238:                                              ; preds = %205
  %239 = load i32, i32* %18, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %18, align 4
  br label %199

241:                                              ; preds = %199
  br label %265

242:                                              ; preds = %193
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %244 = load float**, float*** %10, align 8
  %245 = getelementptr inbounds float*, float** %244, i64 0
  %246 = load float*, float** %245, align 8
  %247 = load i32, i32* %17, align 4
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = mul nsw i32 %247, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %246, i64 %252
  %254 = load float**, float*** %10, align 8
  %255 = getelementptr inbounds float*, float** %254, i64 1
  %256 = load float*, float** %255, align 8
  %257 = load i32, i32* %17, align 4
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %257, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %256, i64 %262
  %264 = call i32 @silk_unmix_ms(%struct.TYPE_6__* %243, float* %253, float* %263)
  br label %265

265:                                              ; preds = %242, %241
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 7
  store i64 0, i64* %267, align 8
  br label %268

268:                                              ; preds = %265
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %17, align 4
  br label %132

271:                                              ; preds = %132
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = mul nsw i32 %272, %275
  store i32 %276, i32* %7, align 4
  br label %277

277:                                              ; preds = %271, %121, %28
  %278 = load i32, i32* %7, align 4
  ret i32 %278
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @silk_flush_frame(%struct.TYPE_7__*) #1

declare dso_local i32 @ff_opus_rc_dec_log(i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32, i8*) #1

declare dso_local i32 @silk_decode_frame(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

declare dso_local i32 @silk_unmix_ms(%struct.TYPE_6__*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
