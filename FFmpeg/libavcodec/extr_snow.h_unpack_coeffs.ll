; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_unpack_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_unpack_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@ff_quant3bA = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Coefficient damaged\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32)* @unpack_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_coeffs(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %17, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  br label %45

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi %struct.TYPE_15__* [ %43, %40 ], [ null, %44 ]
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %18, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %19, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 30
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @get_symbol2(i32* %49, i32* %54, i32 0)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %14, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %45
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @get_symbol2(i32* %61, i32* %66, i32 3)
  store i32 %67, i32* %13, align 4
  br label %70

68:                                               ; preds = %45
  %69 = load i32, i32* @INT_MAX, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %59
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %399, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %402

75:                                               ; preds = %71
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %23, align 4
  br label %87

87:                                               ; preds = %83, %78, %75
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %361, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %364

92:                                               ; preds = %88
  store i32 0, i32* %24, align 4
  %93 = load i32, i32* %20, align 4
  store i32 %93, i32* %25, align 4
  %94 = load i32, i32* %22, align 4
  store i32 %94, i32* %21, align 4
  %95 = load i32, i32* %23, align 4
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 1
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %16, align 8
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %23, align 4
  br label %119

118:                                              ; preds = %107
  store i32 0, i32* %23, align 4
  br label %119

119:                                              ; preds = %118, %114
  br label %120

120:                                              ; preds = %119, %92
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %122 = icmp ne %struct.TYPE_15__* %121, null
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = ashr i32 %124, 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 1
  store %struct.TYPE_15__* %132, %struct.TYPE_15__** %18, align 8
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i32, i32* %11, align 4
  %135 = ashr i32 %134, 1
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %24, align 4
  br label %144

144:                                              ; preds = %140, %133
  br label %145

145:                                              ; preds = %144, %120
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %21, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* %22, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %23, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %24, align 4
  %154 = or i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %247

156:                                              ; preds = %145
  %157 = load i32, i32* %25, align 4
  %158 = ashr i32 %157, 1
  %159 = mul nsw i32 3, %158
  %160 = load i32, i32* %21, align 4
  %161 = ashr i32 %160, 1
  %162 = add nsw i32 %159, %161
  %163 = load i32, i32* %22, align 4
  %164 = and i32 %163, -2
  %165 = add nsw i32 %162, %164
  %166 = load i32, i32* %23, align 4
  %167 = ashr i32 %166, 1
  %168 = add nsw i32 %165, %167
  %169 = load i32, i32* %24, align 4
  %170 = ashr i32 %169, 1
  %171 = add nsw i32 %168, %170
  %172 = call i32 @av_log2(i32 %171)
  store i32 %172, i32* %26, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %26, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = call i32 @get_rac(i32* %174, i32* %182)
  store i32 %183, i32* %20, align 4
  %184 = load i32, i32* %20, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %246

186:                                              ; preds = %156
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %26, align 4
  %193 = add nsw i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %191, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %26, align 4
  %198 = sub nsw i32 %197, 4
  %199 = call i32 @get_symbol2(i32* %188, i32* %196, i32 %198)
  %200 = add nsw i32 %199, 1
  %201 = mul nsw i32 2, %200
  store i32 %201, i32* %20, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load i32**, i32*** %205, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32*, i32** @ff_quant3bA, align 8
  %210 = load i32, i32* %25, align 4
  %211 = and i32 %210, 255
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 20, %214
  %216 = load i32*, i32** @ff_quant3bA, align 8
  %217 = load i32, i32* %22, align 4
  %218 = and i32 %217, 255
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 3, %221
  %223 = add nsw i32 %215, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %208, i64 %224
  %226 = call i32 @get_rac(i32* %203, i32* %225)
  %227 = load i32, i32* %20, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %20, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %20, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %186
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @AV_LOG_ERROR, align 4
  %237 = call i32 @av_log(i32 %235, i32 %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %238

238:                                              ; preds = %232, %186
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* %20, align 4
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 1
  store %struct.TYPE_15__* %244, %struct.TYPE_15__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  store i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %238, %156
  br label %360

247:                                              ; preds = %145
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %304, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %14, align 4
  %253 = icmp sgt i32 %251, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %250
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 2
  %259 = load i32**, i32*** %258, align 8
  %260 = getelementptr inbounds i32*, i32** %259, i64 1
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @get_symbol2(i32* %256, i32* %261, i32 3)
  store i32 %262, i32* %13, align 4
  br label %265

263:                                              ; preds = %250
  %264 = load i32, i32* @INT_MAX, align 4
  store i32 %264, i32* %13, align 4
  br label %265

265:                                              ; preds = %263, %254
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 2
  %270 = load i32**, i32*** %269, align 8
  %271 = getelementptr inbounds i32*, i32** %270, i64 2
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @get_symbol2(i32* %267, i32* %272, i32 -4)
  %274 = add nsw i32 %273, 1
  %275 = mul nsw i32 2, %274
  store i32 %275, i32* %20, align 4
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 2
  %280 = load i32**, i32*** %279, align 8
  %281 = getelementptr inbounds i32*, i32** %280, i64 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 20
  %284 = call i32 @get_rac(i32* %277, i32* %283)
  %285 = load i32, i32* %20, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %20, align 4
  %287 = load i32, i32* %20, align 4
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %265
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @AV_LOG_ERROR, align 4
  %295 = call i32 @av_log(i32 %293, i32 %294, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %20, align 4
  br label %296

296:                                              ; preds = %290, %265
  %297 = load i32, i32* %11, align 4
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %20, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 1
  store %struct.TYPE_15__* %302, %struct.TYPE_15__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 1
  store i32 %300, i32* %303, align 4
  br label %359

304:                                              ; preds = %247
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %13, align 4
  store i32 0, i32* %20, align 4
  %307 = load i32, i32* %13, align 4
  %308 = icmp sge i32 %307, 0
  %309 = zext i1 %308 to i32
  %310 = call i32 @av_assert2(i32 %309)
  %311 = load i32, i32* %12, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %304
  %314 = load i32, i32* %13, align 4
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %11, align 4
  %319 = sub nsw i32 %317, %318
  %320 = sub nsw i32 %319, 2
  %321 = call i32 @FFMIN(i32 %314, i32 %320)
  store i32 %321, i32* %27, align 4
  br label %329

322:                                              ; preds = %304
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %11, align 4
  %326 = sub nsw i32 %324, %325
  %327 = sub nsw i32 %326, 1
  %328 = call i32 @FFMIN(i32 %323, i32 %327)
  store i32 %328, i32* %27, align 4
  br label %329

329:                                              ; preds = %322, %313
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %331 = icmp ne %struct.TYPE_15__* %330, null
  br i1 %331, label %332, label %342

332:                                              ; preds = %329
  %333 = load i32, i32* %27, align 4
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 2, %336
  %338 = load i32, i32* %11, align 4
  %339 = sub nsw i32 %337, %338
  %340 = sub nsw i32 %339, 1
  %341 = call i32 @FFMIN(i32 %333, i32 %340)
  store i32 %341, i32* %27, align 4
  br label %342

342:                                              ; preds = %332, %329
  %343 = load i32, i32* %27, align 4
  %344 = icmp sge i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %342
  %346 = load i32, i32* %27, align 4
  %347 = load i32, i32* %13, align 4
  %348 = icmp sle i32 %346, %347
  br label %349

349:                                              ; preds = %345, %342
  %350 = phi i1 [ false, %342 ], [ %348, %345 ]
  %351 = zext i1 %350 to i32
  %352 = call i32 @av_assert2(i32 %351)
  %353 = load i32, i32* %27, align 4
  %354 = load i32, i32* %11, align 4
  %355 = add nsw i32 %354, %353
  store i32 %355, i32* %11, align 4
  %356 = load i32, i32* %27, align 4
  %357 = load i32, i32* %13, align 4
  %358 = sub nsw i32 %357, %356
  store i32 %358, i32* %13, align 4
  br label %359

359:                                              ; preds = %349, %296
  br label %360

360:                                              ; preds = %359, %246
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %11, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %11, align 4
  br label %88

364:                                              ; preds = %88
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %365, 1
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 1
  store %struct.TYPE_15__* %368, %struct.TYPE_15__** %15, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  store i32 %366, i32* %369, align 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %370, %struct.TYPE_15__** %16, align 8
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %371, %struct.TYPE_15__** %17, align 8
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %373 = icmp ne %struct.TYPE_15__* %372, null
  br i1 %373, label %374, label %398

374:                                              ; preds = %364
  %375 = load i32, i32* %12, align 4
  %376 = and i32 %375, 1
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %395

378:                                              ; preds = %374
  br label %379

379:                                              ; preds = %388, %378
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %385, 1
  %387 = icmp ne i32 %382, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %379
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 1
  store %struct.TYPE_15__* %390, %struct.TYPE_15__** %18, align 8
  br label %379

391:                                              ; preds = %379
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 1
  store %struct.TYPE_15__* %393, %struct.TYPE_15__** %18, align 8
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %394, %struct.TYPE_15__** %19, align 8
  br label %397

395:                                              ; preds = %374
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %396, %struct.TYPE_15__** %18, align 8
  br label %397

397:                                              ; preds = %395, %391
  br label %398

398:                                              ; preds = %397, %364
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %12, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %12, align 4
  br label %71

402:                                              ; preds = %71
  %403 = load i32, i32* %9, align 4
  %404 = add nsw i32 %403, 1
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 1
  store %struct.TYPE_15__* %406, %struct.TYPE_15__** %15, align 8
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 0
  store i32 %404, i32* %407, align 4
  ret void
}

declare dso_local i32 @get_symbol2(i32*, i32*, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @get_rac(i32*, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
