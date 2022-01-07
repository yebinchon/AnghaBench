; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xl.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xl.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32**, i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"width is not a multiple of 4\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Packet is too small\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@xl_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
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
  %26 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %12, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 @av_log(%struct.TYPE_11__* %41, i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %5, align 4
  br label %286

45:                                               ; preds = %4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = icmp slt i32 %46, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(%struct.TYPE_11__* %56, i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %5, align 4
  br label %286

60:                                               ; preds = %45
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = call i32 @ff_get_buffer(%struct.TYPE_11__* %61, %struct.TYPE_10__* %62, i32 0)
  store i32 %63, i32* %18, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %5, align 4
  br label %286

67:                                               ; preds = %60
  %68 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %13, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %14, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 2
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %15, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 4
  store i32 %91, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %280, %67
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %283

98:                                               ; preds = %92
  %99 = load i32, i32* %19, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %10, align 8
  store i32 0, i32* %17, align 4
  br label %103

103:                                              ; preds = %245, %98
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %248

109:                                              ; preds = %103
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @AV_RL32(i32* %110)
  store i32 %111, i32* %20, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 -4
  store i32* %113, i32** %10, align 8
  %114 = load i32, i32* %20, align 4
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 65535
  %117 = load i32, i32* %20, align 4
  %118 = and i32 %117, 65535
  %119 = shl i32 %118, 16
  %120 = or i32 %116, %119
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %20, align 4
  %125 = and i32 %124, 31
  %126 = shl i32 %125, 2
  store i32 %126, i32* %21, align 4
  br label %136

127:                                              ; preds = %109
  %128 = load i32, i32* %24, align 4
  %129 = load i32*, i32** @xl_table, align 8
  %130 = load i32, i32* %20, align 4
  %131 = and i32 %130, 31
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %128, %134
  store i32 %135, i32* %21, align 4
  br label %136

136:                                              ; preds = %127, %123
  %137 = load i32, i32* %20, align 4
  %138 = ashr i32 %137, 5
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %21, align 4
  %140 = load i32*, i32** @xl_table, align 8
  %141 = load i32, i32* %20, align 4
  %142 = and i32 %141, 31
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %139, %145
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %20, align 4
  %148 = ashr i32 %147, 5
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i32*, i32** @xl_table, align 8
  %151 = load i32, i32* %20, align 4
  %152 = and i32 %151, 31
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %149, %155
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %20, align 4
  %158 = ashr i32 %157, 6
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i32*, i32** @xl_table, align 8
  %161 = load i32, i32* %20, align 4
  %162 = and i32 %161, 31
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %159, %165
  store i32 %166, i32* %24, align 4
  %167 = load i32, i32* %20, align 4
  %168 = ashr i32 %167, 5
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %136
  %172 = load i32, i32* %20, align 4
  %173 = and i32 %172, 31
  %174 = shl i32 %173, 2
  store i32 %174, i32* %25, align 4
  br label %184

175:                                              ; preds = %136
  %176 = load i32*, i32** @xl_table, align 8
  %177 = load i32, i32* %20, align 4
  %178 = and i32 %177, 31
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %25, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %25, align 4
  br label %184

184:                                              ; preds = %175, %171
  %185 = load i32, i32* %20, align 4
  %186 = ashr i32 %185, 5
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %20, align 4
  %191 = and i32 %190, 31
  %192 = shl i32 %191, 2
  store i32 %192, i32* %26, align 4
  br label %202

193:                                              ; preds = %184
  %194 = load i32*, i32** @xl_table, align 8
  %195 = load i32, i32* %20, align 4
  %196 = and i32 %195, 31
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %26, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %26, align 4
  br label %202

202:                                              ; preds = %193, %189
  %203 = load i32, i32* %21, align 4
  %204 = shl i32 %203, 1
  %205 = load i32*, i32** %13, align 8
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 0
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load i32, i32* %22, align 4
  %211 = shl i32 %210, 1
  %212 = load i32*, i32** %13, align 8
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  store i32 %211, i32* %216, align 4
  %217 = load i32, i32* %23, align 4
  %218 = shl i32 %217, 1
  %219 = load i32*, i32** %13, align 8
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %220, 2
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %218, i32* %223, align 4
  %224 = load i32, i32* %24, align 4
  %225 = shl i32 %224, 1
  %226 = load i32*, i32** %13, align 8
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 3
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  store i32 %225, i32* %230, align 4
  %231 = load i32, i32* %25, align 4
  %232 = shl i32 %231, 1
  %233 = load i32*, i32** %14, align 8
  %234 = load i32, i32* %17, align 4
  %235 = ashr i32 %234, 2
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  store i32 %232, i32* %237, align 4
  %238 = load i32, i32* %26, align 4
  %239 = shl i32 %238, 1
  %240 = load i32*, i32** %15, align 8
  %241 = load i32, i32* %17, align 4
  %242 = ashr i32 %241, 2
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 %239, i32* %244, align 4
  br label %245

245:                                              ; preds = %202
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 4
  store i32 %247, i32* %17, align 4
  br label %103

248:                                              ; preds = %103
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 4
  %253 = load i32*, i32** %10, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32* %255, i32** %10, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %13, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  store i32* %263, i32** %13, align 8
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** %14, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32* %271, i32** %14, align 8
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %15, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %15, align 8
  br label %280

280:                                              ; preds = %248
  %281 = load i32, i32* %16, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %16, align 4
  br label %92

283:                                              ; preds = %92
  %284 = load i32*, i32** %8, align 8
  store i32 1, i32* %284, align 4
  %285 = load i32, i32* %11, align 4
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %283, %65, %55, %40
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
