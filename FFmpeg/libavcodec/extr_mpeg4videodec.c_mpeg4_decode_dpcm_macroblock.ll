; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_decode_dpcm_macroblock.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_decode_dpcm_macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Forbidden block_mean\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Forbidden rice_parameter\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Forbidden rice_prefix_code\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @mpeg4_decode_dpcm_macroblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_decode_dpcm_macroblock(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  %35 = ashr i32 16, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = ashr i32 16, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @get_bits(i32* %47, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 @av_log(%struct.TYPE_5__* %59, i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %4, align 4
  br label %258

63:                                               ; preds = %43
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = shl i32 1, %71
  %73 = mul nsw i32 %64, %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 6
  %82 = call i32 @get_bits(i32* %81, i32 4)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %63
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = call i32 @av_log(%struct.TYPE_5__* %88, i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %91, i32* %4, align 4
  br label %258

92:                                               ; preds = %63
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %93, 15
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* %14, align 4
  %98 = icmp sgt i32 %97, 11
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 @av_log(%struct.TYPE_5__* %102, i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %4, align 4
  br label %258

106:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %254, %106
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %257

111:                                              ; preds = %107
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 1, %117
  store i32 %118, i32* %25, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 1, %124
  store i32 %125, i32* %19, align 4
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %250, %111
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %253

130:                                              ; preds = %126
  %131 = load i32, i32* %25, align 4
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %19, align 4
  store i32 %132, i32* %20, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  %135 = call i32 @get_unary(i32* %134, i32 1, i32 12)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @get_bits(i32* %140, i32 %145)
  store i32 %146, i32* %17, align 4
  br label %167

147:                                              ; preds = %130
  %148 = load i32, i32* %15, align 4
  %149 = icmp eq i32 %148, 12
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = call i32 @av_log(%struct.TYPE_5__* %153, i32 %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %156, i32* %4, align 4
  br label %258

157:                                              ; preds = %147
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 6
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @get_bitsz(i32* %159, i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %14, align 4
  %164 = shl i32 %162, %163
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %157, %138
  %168 = load i32, i32* %17, align 4
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %17, align 4
  %173 = mul nsw i32 -1, %172
  %174 = ashr i32 %173, 1
  store i32 %174, i32* %17, align 4
  br label %178

175:                                              ; preds = %167
  %176 = load i32, i32* %17, align 4
  %177 = ashr i32 %176, 1
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %19, align 4
  br label %189

189:                                              ; preds = %181, %178
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %20, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %23, align 4
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @FFMIN(i32 %195, i32 %196)
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %23, align 4
  %199 = load i32, i32* %21, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %189
  %202 = load i32, i32* %21, align 4
  store i32 %202, i32* %23, align 4
  br label %203

203:                                              ; preds = %201, %189
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %19, align 4
  %206 = call i32 @FFMAX(i32 %204, i32 %205)
  store i32 %206, i32* %22, align 4
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %22, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i32, i32* %22, align 4
  store i32 %211, i32* %23, align 4
  br label %212

212:                                              ; preds = %210, %203
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %20, align 4
  %215 = call i32 @FFMIN(i32 %213, i32 %214)
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %20, align 4
  %218 = call i32 @FFMAX(i32 %216, i32 %217)
  %219 = add nsw i32 %215, %218
  %220 = ashr i32 %219, 1
  store i32 %220, i32* %24, align 4
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* %23, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %212
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %24, align 4
  br label %226

226:                                              ; preds = %224, %212
  %227 = load i32, i32* %24, align 4
  %228 = load i32, i32* %23, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i32, i32* %17, align 4
  %232 = mul nsw i32 %231, -1
  store i32 %232, i32* %17, align 4
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %234, %235
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 1, %241
  %243 = sub nsw i32 %242, 1
  %244 = and i32 %236, %243
  store i32 %244, i32* %25, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %12, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  br label %250

250:                                              ; preds = %233
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4
  br label %126

253:                                              ; preds = %126
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %107

257:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %257, %150, %99, %85, %56
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i32 @get_bitsz(i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
