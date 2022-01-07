; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_flush_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_flush_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i32*, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, double, i32, i64, i32, i64, i64, i64, i64 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"packet ID=%2x PTS=%0.3f\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@PRIVATE_STREAM_2 = common dso_local global i32 0, align 4
@AUDIO_ID = common dso_local global i32 0, align 4
@PRIVATE_STREAM_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, double, double, double, i32)* @flush_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_packet(%struct.TYPE_15__* %0, i32 %1, double %2, double %3, double %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [128 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store i32 %5, i32* %12, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %13, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %14, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %28, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %19, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = load i32, i32* @AV_LOG_TRACE, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load double, double* %9, align 8
  %51 = fdiv double %50, 9.000000e+04
  %52 = call i32 @av_log(%struct.TYPE_15__* %47, i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49, double %51)
  %53 = getelementptr inbounds [128 x i32], [128 x i32]* %24, i64 0, i64 0
  store i32* %53, i32** %15, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %56, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %6
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load double, double* %64, align 8
  %66 = load double, double* %11, align 8
  %67 = fcmp une double %65, %66
  br i1 %67, label %68, label %284

68:                                               ; preds = %62, %6
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load double, double* %11, align 8
  %72 = call i32 @put_pack_header(%struct.TYPE_15__* %69, i32* %70, double %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %15, align 8
  %77 = load double, double* %11, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  store double %77, double* %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %68
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @put_system_header(%struct.TYPE_15__* %90, i32* %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %15, align 8
  br label %98

98:                                               ; preds = %89, %84
  br label %283

99:                                               ; preds = %68
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %264

104:                                              ; preds = %99
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %263

114:                                              ; preds = %109, %104
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sub nsw i32 %119, 10
  store i32 %120, i32* %30, align 4
  %121 = load double, double* %9, align 8
  %122 = load double, double* @AV_NOPTS_VALUE, align 8
  %123 = fcmp une double %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %114
  %125 = load double, double* %10, align 8
  %126 = load double, double* %9, align 8
  %127 = fcmp une double %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %30, align 4
  %130 = sub nsw i32 %129, 10
  store i32 %130, i32* %30, align 4
  br label %134

131:                                              ; preds = %124
  %132 = load i32, i32* %30, align 4
  %133 = sub nsw i32 %132, 5
  store i32 %133, i32* %30, align 4
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %114
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %249

145:                                              ; preds = %140, %135
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @put_system_header(%struct.TYPE_15__* %146, i32* %147, i32 0)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32*, i32** %15, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %15, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = getelementptr inbounds [128 x i32], [128 x i32]* %24, i64 0, i64 0
  %155 = ptrtoint i32* %153 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %16, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds [128 x i32], [128 x i32]* %24, i64 0, i64 0
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @avio_write(i32 %162, i32* %163, i32 %164)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @PRIVATE_STREAM_2, align 4
  %170 = call i32 @avio_wb32(i32 %168, i32 %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @avio_wb16(i32 %173, i32 980)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @avio_w8(i32 %177, i32 0)
  store i32 0, i32* %21, align 4
  br label %179

179:                                              ; preds = %187, %145
  %180 = load i32, i32* %21, align 4
  %181 = icmp slt i32 %180, 979
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @avio_w8(i32 %185, i32 0)
  br label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %21, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %21, align 4
  br label %179

190:                                              ; preds = %179
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @PRIVATE_STREAM_2, align 4
  %195 = call i32 @avio_wb32(i32 %193, i32 %194)
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @avio_wb16(i32 %198, i32 1018)
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @avio_w8(i32 %202, i32 1)
  store i32 0, i32* %21, align 4
  br label %204

204:                                              ; preds = %212, %190
  %205 = load i32, i32* %21, align 4
  %206 = icmp slt i32 %205, 1017
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @avio_w8(i32 %210, i32 0)
  br label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %21, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %21, align 4
  br label %204

215:                                              ; preds = %204
  %216 = getelementptr inbounds [128 x i32], [128 x i32]* %24, i64 0, i64 0
  %217 = call i32 @memset(i32* %216, i32 0, i32 128)
  %218 = getelementptr inbounds [128 x i32], [128 x i32]* %24, i64 0, i64 0
  store i32* %218, i32** %15, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 7
  store i64 0, i64* %224, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %228, 90000
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = mul nsw i64 %232, 50
  %234 = sdiv i64 %229, %233
  %235 = sitofp i64 %234 to double
  %236 = load double, double* %11, align 8
  %237 = fadd double %236, %235
  store double %237, double* %11, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %239 = load i32*, i32** %15, align 8
  %240 = load double, double* %11, align 8
  %241 = call i32 @put_pack_header(%struct.TYPE_15__* %238, i32* %239, double %240)
  store i32 %241, i32* %16, align 4
  %242 = load double, double* %11, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 2
  store double %242, double* %244, align 8
  %245 = load i32, i32* %16, align 4
  %246 = load i32*, i32** %15, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32* %248, i32** %15, align 8
  br label %262

249:                                              ; preds = %140
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %30, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load i32, i32* %30, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %256, %259
  store i32 %260, i32* %26, align 4
  br label %261

261:                                              ; preds = %255, %249
  br label %262

262:                                              ; preds = %261, %215
  br label %263

263:                                              ; preds = %262, %109
  br label %282

264:                                              ; preds = %99
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = srem i32 %267, %270
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %264
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %275 = load i32*, i32** %15, align 8
  %276 = call i32 @put_system_header(%struct.TYPE_15__* %274, i32* %275, i32 0)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = load i32*, i32** %15, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %15, align 8
  br label %281

281:                                              ; preds = %273, %264
  br label %282

282:                                              ; preds = %281, %263
  br label %283

283:                                              ; preds = %282, %98
  br label %284

284:                                              ; preds = %283, %62
  %285 = load i32*, i32** %15, align 8
  %286 = getelementptr inbounds [128 x i32], [128 x i32]* %24, i64 0, i64 0
  %287 = ptrtoint i32* %285 to i64
  %288 = ptrtoint i32* %286 to i64
  %289 = sub i64 %287, %288
  %290 = sdiv exact i64 %289, 4
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %16, align 4
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds [128 x i32], [128 x i32]* %24, i64 0, i64 0
  %296 = load i32, i32* %16, align 4
  %297 = call i32 @avio_write(i32 %294, i32* %295, i32 %296)
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sub nsw i32 %300, %301
  store i32 %302, i32* %23, align 4
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 9
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %284
  %308 = load i32, i32* %19, align 4
  %309 = and i32 %308, 224
  %310 = load i32, i32* @AUDIO_ID, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load i32, i32* %25, align 4
  %314 = add nsw i32 %313, 20
  store i32 %314, i32* %25, align 4
  br label %315

315:                                              ; preds = %312, %307, %284
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 9
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %335, label %325

325:                                              ; preds = %320, %315
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 8
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %345

330:                                              ; preds = %325
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %330, %320
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 8
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  store i32 1, i32* %28, align 4
  br label %341

341:                                              ; preds = %340, %335
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %25, align 4
  %344 = sub nsw i32 %342, %343
  store i32 %344, i32* %26, align 4
  br label %345

345:                                              ; preds = %341, %330, %325
  %346 = load i32, i32* %26, align 4
  %347 = load i32, i32* %25, align 4
  %348 = add nsw i32 %346, %347
  %349 = load i32, i32* %23, align 4
  %350 = sub nsw i32 %349, %348
  store i32 %350, i32* %23, align 4
  %351 = load i32, i32* %23, align 4
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %843

353:                                              ; preds = %345
  %354 = load i32, i32* %23, align 4
  %355 = sub nsw i32 %354, 6
  store i32 %355, i32* %23, align 4
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 6
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %353
  store i32 3, i32* %22, align 4
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load i32, i32* %22, align 4
  %367 = add nsw i32 %366, 3
  store i32 %367, i32* %22, align 4
  br label %368

368:                                              ; preds = %365, %360
  %369 = load i32, i32* %22, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %22, align 4
  br label %372

371:                                              ; preds = %353
  store i32 0, i32* %22, align 4
  br label %372

372:                                              ; preds = %371, %368
  %373 = load double, double* %9, align 8
  %374 = load double, double* @AV_NOPTS_VALUE, align 8
  %375 = fcmp une double %373, %374
  br i1 %375, label %376, label %387

376:                                              ; preds = %372
  %377 = load double, double* %10, align 8
  %378 = load double, double* %9, align 8
  %379 = fcmp une double %377, %378
  br i1 %379, label %380, label %383

380:                                              ; preds = %376
  %381 = load i32, i32* %22, align 4
  %382 = add nsw i32 %381, 10
  store i32 %382, i32* %22, align 4
  br label %386

383:                                              ; preds = %376
  %384 = load i32, i32* %22, align 4
  %385 = add nsw i32 %384, 5
  store i32 %385, i32* %22, align 4
  br label %386

386:                                              ; preds = %383, %380
  br label %396

387:                                              ; preds = %372
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 6
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %387
  %393 = load i32, i32* %22, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %22, align 4
  br label %395

395:                                              ; preds = %392, %387
  br label %396

396:                                              ; preds = %395, %386
  %397 = load i32, i32* %23, align 4
  %398 = load i32, i32* %22, align 4
  %399 = sub nsw i32 %397, %398
  store i32 %399, i32* %17, align 4
  %400 = load i32, i32* %19, align 4
  %401 = icmp slt i32 %400, 192
  br i1 %401, label %402, label %418

402:                                              ; preds = %396
  %403 = load i32, i32* @PRIVATE_STREAM_1, align 4
  store i32 %403, i32* %18, align 4
  %404 = load i32, i32* %17, align 4
  %405 = sub nsw i32 %404, 1
  store i32 %405, i32* %17, align 4
  %406 = load i32, i32* %19, align 4
  %407 = icmp sge i32 %406, 64
  br i1 %407, label %408, label %417

408:                                              ; preds = %402
  %409 = load i32, i32* %17, align 4
  %410 = sub nsw i32 %409, 3
  store i32 %410, i32* %17, align 4
  %411 = load i32, i32* %19, align 4
  %412 = icmp sge i32 %411, 160
  br i1 %412, label %413, label %416

413:                                              ; preds = %408
  %414 = load i32, i32* %17, align 4
  %415 = sub nsw i32 %414, 3
  store i32 %415, i32* %17, align 4
  br label %416

416:                                              ; preds = %413, %408
  br label %417

417:                                              ; preds = %416, %402
  br label %421

418:                                              ; preds = %396
  %419 = load i32, i32* %19, align 4
  %420 = add nsw i32 256, %419
  store i32 %420, i32* %18, align 4
  br label %421

421:                                              ; preds = %418, %417
  %422 = load i32, i32* %17, align 4
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @av_fifo_size(i32 %425)
  %427 = sub nsw i32 %422, %426
  store i32 %427, i32* %20, align 4
  %428 = load i32, i32* %17, align 4
  %429 = load i32, i32* %12, align 4
  %430 = icmp sle i32 %428, %429
  br i1 %430, label %431, label %494

431:                                              ; preds = %421
  %432 = load double, double* %9, align 8
  %433 = load double, double* @AV_NOPTS_VALUE, align 8
  %434 = fcmp une double %432, %433
  br i1 %434, label %435, label %494

435:                                              ; preds = %431
  store i32 0, i32* %31, align 4
  %436 = load double, double* %10, align 8
  %437 = load double, double* %9, align 8
  %438 = fcmp une double %436, %437
  br i1 %438, label %439, label %442

439:                                              ; preds = %435
  %440 = load i32, i32* %31, align 4
  %441 = add nsw i32 %440, 5
  store i32 %441, i32* %31, align 4
  br label %442

442:                                              ; preds = %439, %435
  %443 = load double, double* %9, align 8
  %444 = load double, double* @AV_NOPTS_VALUE, align 8
  %445 = fcmp une double %443, %444
  br i1 %445, label %446, label %455

446:                                              ; preds = %442
  %447 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 6
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  %451 = zext i1 %450 to i64
  %452 = select i1 %450, i32 5, i32 4
  %453 = load i32, i32* %31, align 4
  %454 = add nsw i32 %453, %452
  store i32 %454, i32* %31, align 4
  br label %455

455:                                              ; preds = %446, %442
  %456 = load double, double* @AV_NOPTS_VALUE, align 8
  store double %456, double* %10, align 8
  store double %456, double* %9, align 8
  %457 = load i32, i32* %31, align 4
  %458 = load i32, i32* %22, align 4
  %459 = sub nsw i32 %458, %457
  store i32 %459, i32* %22, align 4
  %460 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 7
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %476

464:                                              ; preds = %455
  %465 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 7
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %464
  %470 = load i32, i32* %31, align 4
  %471 = load i32, i32* %26, align 4
  %472 = add nsw i32 %471, %470
  store i32 %472, i32* %26, align 4
  %473 = load i32, i32* %31, align 4
  %474 = load i32, i32* %23, align 4
  %475 = sub nsw i32 %474, %473
  store i32 %475, i32* %23, align 4
  br label %480

476:                                              ; preds = %464, %455
  %477 = load i32, i32* %31, align 4
  %478 = load i32, i32* %17, align 4
  %479 = add nsw i32 %478, %477
  store i32 %479, i32* %17, align 4
  br label %480

480:                                              ; preds = %476, %469
  %481 = load i32, i32* %31, align 4
  %482 = load i32, i32* %20, align 4
  %483 = add nsw i32 %482, %481
  store i32 %483, i32* %20, align 4
  %484 = load i32, i32* %17, align 4
  %485 = load i32, i32* %12, align 4
  %486 = icmp sgt i32 %484, %485
  br i1 %486, label %487, label %493

487:                                              ; preds = %480
  %488 = load i32, i32* %17, align 4
  %489 = load i32, i32* %12, align 4
  %490 = sub nsw i32 %488, %489
  %491 = load i32, i32* %20, align 4
  %492 = add nsw i32 %491, %490
  store i32 %492, i32* %20, align 4
  br label %493

493:                                              ; preds = %487, %480
  br label %494

494:                                              ; preds = %493, %431, %421
  %495 = load i32, i32* %26, align 4
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %516

497:                                              ; preds = %494
  %498 = load i32, i32* %26, align 4
  %499 = icmp sle i32 %498, 7
  br i1 %499, label %500, label %516

500:                                              ; preds = %497
  %501 = load i32, i32* %26, align 4
  %502 = load i32, i32* %23, align 4
  %503 = add nsw i32 %502, %501
  store i32 %503, i32* %23, align 4
  %504 = load i32, i32* %26, align 4
  %505 = load i32, i32* %17, align 4
  %506 = add nsw i32 %505, %504
  store i32 %506, i32* %17, align 4
  %507 = load i32, i32* %20, align 4
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %500
  %510 = load i32, i32* %26, align 4
  store i32 %510, i32* %20, align 4
  br label %515

511:                                              ; preds = %500
  %512 = load i32, i32* %26, align 4
  %513 = load i32, i32* %20, align 4
  %514 = add nsw i32 %513, %512
  store i32 %514, i32* %20, align 4
  br label %515

515:                                              ; preds = %511, %509
  store i32 0, i32* %26, align 4
  br label %516

516:                                              ; preds = %515, %497, %494
  %517 = load i32, i32* %20, align 4
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %516
  store i32 0, i32* %20, align 4
  br label %520

520:                                              ; preds = %519, %516
  %521 = load i32, i32* %18, align 4
  %522 = load i32, i32* @PRIVATE_STREAM_1, align 4
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %524, label %543

524:                                              ; preds = %520
  %525 = load i32, i32* %19, align 4
  %526 = icmp sge i32 %525, 160
  br i1 %526, label %527, label %543

527:                                              ; preds = %524
  %528 = load i32, i32* %17, align 4
  %529 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %530 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %529, i32 0, i32 6
  %531 = load i32, i32* %530, align 8
  %532 = call i32 @av_fifo_size(i32 %531)
  %533 = icmp slt i32 %528, %532
  br i1 %533, label %534, label %542

534:                                              ; preds = %527
  %535 = load i32, i32* %17, align 4
  %536 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %537 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 4
  %539 = srem i32 %535, %538
  %540 = load i32, i32* %20, align 4
  %541 = add nsw i32 %540, %539
  store i32 %541, i32* %20, align 4
  br label %542

542:                                              ; preds = %534, %527
  br label %543

543:                                              ; preds = %542, %524, %520
  %544 = load i32, i32* %20, align 4
  %545 = icmp sgt i32 %544, 16
  br i1 %545, label %546, label %556

546:                                              ; preds = %543
  %547 = load i32, i32* %20, align 4
  %548 = load i32, i32* %26, align 4
  %549 = add nsw i32 %548, %547
  store i32 %549, i32* %26, align 4
  %550 = load i32, i32* %20, align 4
  %551 = load i32, i32* %23, align 4
  %552 = sub nsw i32 %551, %550
  store i32 %552, i32* %23, align 4
  %553 = load i32, i32* %20, align 4
  %554 = load i32, i32* %17, align 4
  %555 = sub nsw i32 %554, %553
  store i32 %555, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %556

556:                                              ; preds = %546, %543
  %557 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %558 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %559 = load i32, i32* %17, align 4
  %560 = load i32, i32* %20, align 4
  %561 = sub nsw i32 %559, %560
  %562 = call i32 @get_nb_frames(%struct.TYPE_15__* %557, %struct.TYPE_13__* %558, i32 %561)
  store i32 %562, i32* %29, align 4
  %563 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* %18, align 4
  %567 = call i32 @avio_wb32(i32 %565, i32 %566)
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = load i32, i32* %23, align 4
  %572 = call i32 @avio_wb16(i32 %570, i32 %571)
  %573 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %574 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %573, i32 0, i32 6
  %575 = load i64, i64* %574, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %591, label %577

577:                                              ; preds = %556
  store i32 0, i32* %21, align 4
  br label %578

578:                                              ; preds = %587, %577
  %579 = load i32, i32* %21, align 4
  %580 = load i32, i32* %20, align 4
  %581 = icmp slt i32 %579, %580
  br i1 %581, label %582, label %590

582:                                              ; preds = %578
  %583 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = call i32 @avio_w8(i32 %585, i32 255)
  br label %587

587:                                              ; preds = %582
  %588 = load i32, i32* %21, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %21, align 4
  br label %578

590:                                              ; preds = %578
  br label %591

591:                                              ; preds = %590, %556
  %592 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %593 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %592, i32 0, i32 6
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %695

596:                                              ; preds = %591
  %597 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %598 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = call i32 @avio_w8(i32 %599, i32 128)
  store i32 0, i32* %27, align 4
  %601 = load double, double* %9, align 8
  %602 = load double, double* @AV_NOPTS_VALUE, align 8
  %603 = fcmp une double %601, %602
  br i1 %603, label %604, label %614

604:                                              ; preds = %596
  %605 = load i32, i32* %27, align 4
  %606 = or i32 %605, 128
  store i32 %606, i32* %27, align 4
  %607 = load double, double* %10, align 8
  %608 = load double, double* %9, align 8
  %609 = fcmp une double %607, %608
  br i1 %609, label %610, label %613

610:                                              ; preds = %604
  %611 = load i32, i32* %27, align 4
  %612 = or i32 %611, 64
  store i32 %612, i32* %27, align 4
  br label %613

613:                                              ; preds = %610, %604
  br label %614

614:                                              ; preds = %613, %596
  %615 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %616 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %615, i32 0, i32 1
  %617 = load i64, i64* %616, align 8
  %618 = icmp eq i64 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %614
  %620 = load i32, i32* %27, align 4
  %621 = or i32 %620, 1
  store i32 %621, i32* %27, align 4
  br label %622

622:                                              ; preds = %619, %614
  %623 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %624 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* %27, align 4
  %627 = call i32 @avio_w8(i32 %625, i32 %626)
  %628 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %629 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 8
  %631 = load i32, i32* %22, align 4
  %632 = sub nsw i32 %631, 3
  %633 = load i32, i32* %20, align 4
  %634 = add nsw i32 %632, %633
  %635 = call i32 @avio_w8(i32 %630, i32 %634)
  %636 = load i32, i32* %27, align 4
  %637 = and i32 %636, 128
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %650

639:                                              ; preds = %622
  %640 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %641 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = load i32, i32* %27, align 4
  %644 = and i32 %643, 64
  %645 = icmp ne i32 %644, 0
  %646 = zext i1 %645 to i64
  %647 = select i1 %645, i32 3, i32 2
  %648 = load double, double* %9, align 8
  %649 = call i32 @put_timestamp(i32 %642, i32 %647, double %648)
  br label %650

650:                                              ; preds = %639, %622
  %651 = load i32, i32* %27, align 4
  %652 = and i32 %651, 64
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %660

654:                                              ; preds = %650
  %655 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %656 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = load double, double* %10, align 8
  %659 = call i32 @put_timestamp(i32 %657, i32 1, double %658)
  br label %660

660:                                              ; preds = %654, %650
  %661 = load i32, i32* %27, align 4
  %662 = and i32 %661, 1
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %694

664:                                              ; preds = %660
  %665 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %666 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 8
  %668 = call i32 @avio_w8(i32 %667, i32 16)
  %669 = load i32, i32* %19, align 4
  %670 = and i32 %669, 224
  %671 = load i32, i32* @AUDIO_ID, align 4
  %672 = icmp eq i32 %670, %671
  br i1 %672, label %673, label %683

673:                                              ; preds = %664
  %674 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %675 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %678 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %677, i32 0, i32 4
  %679 = load i32, i32* %678, align 8
  %680 = sdiv i32 %679, 128
  %681 = or i32 16384, %680
  %682 = call i32 @avio_wb16(i32 %676, i32 %681)
  br label %693

683:                                              ; preds = %664
  %684 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 8
  %687 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %688 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %687, i32 0, i32 4
  %689 = load i32, i32* %688, align 8
  %690 = sdiv i32 %689, 1024
  %691 = or i32 24576, %690
  %692 = call i32 @avio_wb16(i32 %686, i32 %691)
  br label %693

693:                                              ; preds = %683, %673
  br label %694

694:                                              ; preds = %693, %660
  br label %727

695:                                              ; preds = %591
  %696 = load double, double* %9, align 8
  %697 = load double, double* @AV_NOPTS_VALUE, align 8
  %698 = fcmp une double %696, %697
  br i1 %698, label %699, label %721

699:                                              ; preds = %695
  %700 = load double, double* %10, align 8
  %701 = load double, double* %9, align 8
  %702 = fcmp une double %700, %701
  br i1 %702, label %703, label %714

703:                                              ; preds = %699
  %704 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %705 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = load double, double* %9, align 8
  %708 = call i32 @put_timestamp(i32 %706, i32 3, double %707)
  %709 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %710 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = load double, double* %10, align 8
  %713 = call i32 @put_timestamp(i32 %711, i32 1, double %712)
  br label %720

714:                                              ; preds = %699
  %715 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %716 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 8
  %718 = load double, double* %9, align 8
  %719 = call i32 @put_timestamp(i32 %717, i32 2, double %718)
  br label %720

720:                                              ; preds = %714, %703
  br label %726

721:                                              ; preds = %695
  %722 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %723 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 8
  %725 = call i32 @avio_w8(i32 %724, i32 15)
  br label %726

726:                                              ; preds = %721, %720
  br label %727

727:                                              ; preds = %726, %694
  %728 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %729 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %728, i32 0, i32 6
  %730 = load i64, i64* %729, align 8
  %731 = icmp ne i64 %730, 0
  br i1 %731, label %732, label %750

732:                                              ; preds = %727
  %733 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %734 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 8
  %736 = call i32 @avio_w8(i32 %735, i32 255)
  store i32 0, i32* %21, align 4
  br label %737

737:                                              ; preds = %746, %732
  %738 = load i32, i32* %21, align 4
  %739 = load i32, i32* %20, align 4
  %740 = icmp slt i32 %738, %739
  br i1 %740, label %741, label %749

741:                                              ; preds = %737
  %742 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %743 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 8
  %745 = call i32 @avio_w8(i32 %744, i32 255)
  br label %746

746:                                              ; preds = %741
  %747 = load i32, i32* %21, align 4
  %748 = add nsw i32 %747, 1
  store i32 %748, i32* %21, align 4
  br label %737

749:                                              ; preds = %737
  br label %750

750:                                              ; preds = %749, %727
  %751 = load i32, i32* %18, align 4
  %752 = load i32, i32* @PRIVATE_STREAM_1, align 4
  %753 = icmp eq i32 %751, %752
  br i1 %753, label %754, label %815

754:                                              ; preds = %750
  %755 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %756 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 8
  %758 = load i32, i32* %19, align 4
  %759 = call i32 @avio_w8(i32 %757, i32 %758)
  %760 = load i32, i32* %19, align 4
  %761 = icmp sge i32 %760, 160
  br i1 %761, label %762, label %798

762:                                              ; preds = %754
  %763 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %764 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %763, i32 0, i32 0
  %765 = load i32, i32* %764, align 8
  %766 = call i32 @avio_w8(i32 %765, i32 7)
  %767 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %768 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 8
  %770 = call i32 @avio_wb16(i32 %769, i32 4)
  %771 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %772 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %771, i32 0, i32 0
  %773 = load i32, i32* %772, align 8
  %774 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %775 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %774, i32 0, i32 5
  %776 = load i32*, i32** %775, align 8
  %777 = getelementptr inbounds i32, i32* %776, i64 0
  %778 = load i32, i32* %777, align 4
  %779 = call i32 @avio_w8(i32 %773, i32 %778)
  %780 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %781 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 8
  %783 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %784 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %783, i32 0, i32 5
  %785 = load i32*, i32** %784, align 8
  %786 = getelementptr inbounds i32, i32* %785, i64 1
  %787 = load i32, i32* %786, align 4
  %788 = call i32 @avio_w8(i32 %782, i32 %787)
  %789 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %790 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 8
  %792 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %793 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %792, i32 0, i32 5
  %794 = load i32*, i32** %793, align 8
  %795 = getelementptr inbounds i32, i32* %794, i64 2
  %796 = load i32, i32* %795, align 4
  %797 = call i32 @avio_w8(i32 %791, i32 %796)
  br label %814

798:                                              ; preds = %754
  %799 = load i32, i32* %19, align 4
  %800 = icmp sge i32 %799, 64
  br i1 %800, label %801, label %813

801:                                              ; preds = %798
  %802 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %803 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 8
  %805 = load i32, i32* %29, align 4
  %806 = call i32 @avio_w8(i32 %804, i32 %805)
  %807 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %808 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 8
  %810 = load i32, i32* %12, align 4
  %811 = add nsw i32 %810, 1
  %812 = call i32 @avio_wb16(i32 %809, i32 %811)
  br label %813

813:                                              ; preds = %801, %798
  br label %814

814:                                              ; preds = %813, %762
  br label %815

815:                                              ; preds = %814, %750
  %816 = load i32, i32* %17, align 4
  %817 = load i32, i32* %20, align 4
  %818 = sub nsw i32 %816, %817
  %819 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %820 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %819, i32 0, i32 6
  %821 = load i32, i32* %820, align 8
  %822 = call i32 @av_fifo_size(i32 %821)
  %823 = icmp sle i32 %818, %822
  %824 = zext i1 %823 to i32
  %825 = call i32 @av_assert0(i32 %824)
  %826 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %827 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %826, i32 0, i32 6
  %828 = load i32, i32* %827, align 8
  %829 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %830 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 8
  %832 = load i32, i32* %17, align 4
  %833 = load i32, i32* %20, align 4
  %834 = sub nsw i32 %832, %833
  %835 = call i32 @av_fifo_generic_read(i32 %828, i32 %831, i32 %834, void (i8*, i8*, i32)* bitcast (i32 (i32, i32*, i32)* @avio_write to void (i8*, i8*, i32)*))
  %836 = load i32, i32* %17, align 4
  %837 = load i32, i32* %20, align 4
  %838 = sub nsw i32 %836, %837
  %839 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %840 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %839, i32 0, i32 2
  %841 = load i32, i32* %840, align 8
  %842 = sub nsw i32 %841, %838
  store i32 %842, i32* %840, align 8
  br label %844

843:                                              ; preds = %345
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %844

844:                                              ; preds = %843, %815
  %845 = load i32, i32* %26, align 4
  %846 = icmp sgt i32 %845, 0
  br i1 %846, label %847, label %854

847:                                              ; preds = %844
  %848 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %849 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %850 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 8
  %852 = load i32, i32* %26, align 4
  %853 = call i32 @put_padding_packet(%struct.TYPE_15__* %848, i32 %851, i32 %852)
  br label %854

854:                                              ; preds = %847, %844
  store i32 0, i32* %21, align 4
  br label %855

855:                                              ; preds = %864, %854
  %856 = load i32, i32* %21, align 4
  %857 = load i32, i32* %25, align 4
  %858 = icmp slt i32 %856, %857
  br i1 %858, label %859, label %867

859:                                              ; preds = %855
  %860 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %861 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %860, i32 0, i32 0
  %862 = load i32, i32* %861, align 8
  %863 = call i32 @avio_w8(i32 %862, i32 0)
  br label %864

864:                                              ; preds = %859
  %865 = load i32, i32* %21, align 4
  %866 = add nsw i32 %865, 1
  store i32 %866, i32* %21, align 4
  br label %855

867:                                              ; preds = %855
  %868 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %869 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %868, i32 0, i32 0
  %870 = load i32, i32* %869, align 8
  %871 = call i32 @avio_flush(i32 %870)
  %872 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %873 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %872, i32 0, i32 0
  %874 = load i32, i32* %873, align 8
  %875 = add nsw i32 %874, 1
  store i32 %875, i32* %873, align 8
  %876 = load i32, i32* %28, align 4
  %877 = icmp ne i32 %876, 0
  br i1 %877, label %883, label %878

878:                                              ; preds = %867
  %879 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %880 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %879, i32 0, i32 1
  %881 = load i64, i64* %880, align 8
  %882 = add nsw i64 %881, 1
  store i64 %882, i64* %880, align 8
  br label %883

883:                                              ; preds = %878, %867
  %884 = load i32, i32* %17, align 4
  %885 = load i32, i32* %20, align 4
  %886 = sub nsw i32 %884, %885
  ret i32 %886
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, double) #1

declare dso_local i32 @put_pack_header(%struct.TYPE_15__*, i32*, double) #1

declare dso_local i32 @put_system_header(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @avio_write(i32, i32*, i32) #1

declare dso_local i32 @avio_wb32(i32, i32) #1

declare dso_local i32 @avio_wb16(i32, i32) #1

declare dso_local i32 @avio_w8(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i32 @get_nb_frames(%struct.TYPE_15__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @put_timestamp(i32, i32, double) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_fifo_generic_read(i32, i32, i32, void (i8*, i8*, i32)*) #1

declare dso_local i32 @put_padding_packet(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @avio_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
