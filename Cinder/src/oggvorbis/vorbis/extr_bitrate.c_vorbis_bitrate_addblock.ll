; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_bitrate.c_vorbis_bitrate_addblock.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_bitrate.c_vorbis_bitrate_addblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_12__ = type { i32* }

@PACKETBLOBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_bitrate_addblock(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %6, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %7, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %8, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %9, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %10, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @rint(i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @oggpack_bytes(i32 %52)
  %54 = mul nsw i32 %53, 8
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %12, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul nsw i64 %63, %66
  br label %72

68:                                               ; preds = %1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %68, %60
  %73 = phi i64 [ %67, %60 ], [ %71, %68 ]
  store i64 %73, i64* %13, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = mul nsw i64 %81, %84
  br label %90

86:                                               ; preds = %72
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  br label %90

90:                                               ; preds = %86, %78
  %91 = phi i64 [ %85, %78 ], [ %89, %86 ]
  store i64 %91, i64* %14, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = mul nsw i64 %104, %107
  store i64 %108, i64* %16, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %90
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = icmp ne %struct.TYPE_13__* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 -1, i32* %2, align 4
  br label %615

119:                                              ; preds = %113
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 8
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %122, align 8
  store i32 0, i32* %2, align 4
  br label %615

123:                                              ; preds = %90
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 8
  store %struct.TYPE_13__* %124, %struct.TYPE_13__** %126, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %300

131:                                              ; preds = %123
  store double 0.000000e+00, double* %17, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = mul nsw i64 %139, %142
  br label %148

144:                                              ; preds = %131
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  br label %148

148:                                              ; preds = %144, %136
  %149 = phi i64 [ %143, %136 ], [ %147, %144 ]
  store i64 %149, i64* %18, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sitofp i32 %152 to double
  %154 = fdiv double 1.500000e+01, %153
  store double %154, double* %19, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* %18, align 8
  %160 = sub nsw i64 %158, %159
  %161 = add nsw i64 %157, %160
  %162 = load i64, i64* %16, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %198

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %184, %164
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %165
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* %18, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %18, align 8
  %178 = sub nsw i64 %176, %177
  %179 = add nsw i64 %175, %178
  %180 = load i64, i64* %16, align 8
  %181 = icmp sgt i64 %179, %180
  br label %182

182:                                              ; preds = %172, %168, %165
  %183 = phi i1 [ false, %168 ], [ false, %165 ], [ %181, %172 ]
  br i1 %183, label %184, label %197

184:                                              ; preds = %182
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %11, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @oggpack_bytes(i32 %193)
  %195 = mul nsw i32 %194, 8
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %12, align 8
  br label %165

197:                                              ; preds = %182
  br label %245

198:                                              ; preds = %148
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %12, align 8
  %203 = load i64, i64* %18, align 8
  %204 = sub nsw i64 %202, %203
  %205 = add nsw i64 %201, %204
  %206 = load i64, i64* %16, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %244

208:                                              ; preds = %198
  br label %209

209:                                              ; preds = %230, %208
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* @PACKETBLOBS, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %209
  %215 = load i64, i64* %12, align 8
  %216 = load i64, i64* %18, align 8
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %214
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %12, align 8
  %223 = load i64, i64* %18, align 8
  %224 = sub nsw i64 %222, %223
  %225 = add nsw i64 %221, %224
  %226 = load i64, i64* %16, align 8
  %227 = icmp slt i64 %225, %226
  br label %228

228:                                              ; preds = %218, %214, %209
  %229 = phi i1 [ false, %214 ], [ false, %209 ], [ %227, %218 ]
  br i1 %229, label %230, label %243

230:                                              ; preds = %228
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %11, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @oggpack_bytes(i32 %239)
  %241 = mul nsw i32 %240, 8
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %12, align 8
  br label %209

243:                                              ; preds = %228
  br label %244

244:                                              ; preds = %243, %198
  br label %245

245:                                              ; preds = %244, %197
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %247, %250
  %252 = call i32 @rint(i64 %251)
  %253 = load i32, i32* %15, align 4
  %254 = sdiv i32 %252, %253
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = mul nsw i32 %254, %257
  %259 = sitofp i32 %258 to double
  store double %259, double* %17, align 8
  %260 = load double, double* %17, align 8
  %261 = load double, double* %19, align 8
  %262 = fneg double %261
  %263 = fcmp olt double %260, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %245
  %265 = load double, double* %19, align 8
  %266 = fneg double %265
  store double %266, double* %17, align 8
  br label %267

267:                                              ; preds = %264, %245
  %268 = load double, double* %17, align 8
  %269 = load double, double* %19, align 8
  %270 = fcmp ogt double %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = load double, double* %19, align 8
  store double %272, double* %17, align 8
  br label %273

273:                                              ; preds = %271, %267
  %274 = load double, double* %17, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sitofp i32 %277 to double
  %279 = fdiv double %274, %278
  %280 = load i32, i32* %15, align 4
  %281 = sitofp i32 %280 to double
  %282 = fmul double %279, %281
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 7
  %285 = load i64, i64* %284, align 8
  %286 = sitofp i64 %285 to double
  %287 = fadd double %286, %282
  %288 = fptosi double %287 to i64
  store i64 %288, i64* %284, align 8
  %289 = call i32 @rint(i64 %288)
  store i32 %289, i32* %11, align 4
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @oggpack_bytes(i32 %296)
  %298 = mul nsw i32 %297, 8
  %299 = sext i32 %298 to i64
  store i64 %299, i64* %12, align 8
  br label %300

300:                                              ; preds = %273, %123
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp sgt i64 %303, 0
  br i1 %304, label %305, label %339

305:                                              ; preds = %300
  %306 = load i64, i64* %12, align 8
  %307 = load i64, i64* %13, align 8
  %308 = icmp slt i64 %306, %307
  br i1 %308, label %309, label %338

309:                                              ; preds = %305
  br label %310

310:                                              ; preds = %326, %309
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 5
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %13, align 8
  %315 = load i64, i64* %12, align 8
  %316 = sub nsw i64 %314, %315
  %317 = sub nsw i64 %313, %316
  %318 = icmp slt i64 %317, 0
  br i1 %318, label %319, label %337

319:                                              ; preds = %310
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %11, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* @PACKETBLOBS, align 4
  %324 = icmp sge i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %319
  br label %337

326:                                              ; preds = %319
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @oggpack_bytes(i32 %333)
  %335 = mul nsw i32 %334, 8
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %12, align 8
  br label %310

337:                                              ; preds = %325, %310
  br label %338

338:                                              ; preds = %337, %305
  br label %339

339:                                              ; preds = %338, %300
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = icmp sgt i64 %342, 0
  br i1 %343, label %344, label %380

344:                                              ; preds = %339
  %345 = load i64, i64* %12, align 8
  %346 = load i64, i64* %14, align 8
  %347 = icmp sgt i64 %345, %346
  br i1 %347, label %348, label %379

348:                                              ; preds = %344
  br label %349

349:                                              ; preds = %367, %348
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 5
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* %12, align 8
  %354 = load i64, i64* %14, align 8
  %355 = sub nsw i64 %353, %354
  %356 = add nsw i64 %352, %355
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp sgt i64 %356, %359
  br i1 %360, label %361, label %378

361:                                              ; preds = %349
  %362 = load i32, i32* %11, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %11, align 4
  %364 = load i32, i32* %11, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %361
  br label %378

367:                                              ; preds = %361
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @oggpack_bytes(i32 %374)
  %376 = mul nsw i32 %375, 8
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %12, align 8
  br label %349

378:                                              ; preds = %366, %349
  br label %379

379:                                              ; preds = %378, %344
  br label %380

380:                                              ; preds = %379, %339
  %381 = load i32, i32* %11, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %429

383:                                              ; preds = %380
  %384 = load i64, i64* %14, align 8
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 5
  %390 = load i64, i64* %389, align 8
  %391 = sub nsw i64 %387, %390
  %392 = add nsw i64 %384, %391
  %393 = sdiv i64 %392, 8
  store i64 %393, i64* %20, align 8
  store i32 0, i32* %11, align 4
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 6
  store i32 0, i32* %395, align 8
  %396 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 0
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %11, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @oggpack_bytes(i32 %402)
  %404 = sext i32 %403 to i64
  %405 = load i64, i64* %20, align 8
  %406 = icmp sgt i64 %404, %405
  br i1 %406, label %407, label %428

407:                                              ; preds = %383
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %11, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load i64, i64* %20, align 8
  %416 = mul nsw i64 %415, 8
  %417 = call i32 @oggpack_writetrunc(i32 %414, i64 %416)
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %11, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @oggpack_bytes(i32 %424)
  %426 = mul nsw i32 %425, 8
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %12, align 8
  br label %428

428:                                              ; preds = %407, %383
  br label %482

429:                                              ; preds = %380
  %430 = load i64, i64* %13, align 8
  %431 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i32 0, i32 5
  %433 = load i64, i64* %432, align 8
  %434 = sub nsw i64 %430, %433
  %435 = add nsw i64 %434, 7
  %436 = sdiv i64 %435, 8
  store i64 %436, i64* %21, align 8
  %437 = load i32, i32* %11, align 4
  %438 = load i32, i32* @PACKETBLOBS, align 4
  %439 = icmp sge i32 %437, %438
  br i1 %439, label %440, label %443

440:                                              ; preds = %429
  %441 = load i32, i32* @PACKETBLOBS, align 4
  %442 = sub nsw i32 %441, 1
  store i32 %442, i32* %11, align 4
  br label %443

443:                                              ; preds = %440, %429
  %444 = load i32, i32* %11, align 4
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 6
  store i32 %444, i32* %446, align 8
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 0
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %11, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @oggpack_bytes(i32 %453)
  %455 = sext i32 %454 to i64
  %456 = load i64, i64* %21, align 8
  %457 = sub nsw i64 %456, %455
  store i64 %457, i64* %21, align 8
  br label %458

458:                                              ; preds = %462, %443
  %459 = load i64, i64* %21, align 8
  %460 = add nsw i64 %459, -1
  store i64 %460, i64* %21, align 8
  %461 = icmp sgt i64 %459, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %458
  %463 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 0
  %465 = load i32*, i32** %464, align 8
  %466 = load i32, i32* %11, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @oggpack_write(i32 %469, i32 0, i32 8)
  br label %458

471:                                              ; preds = %458
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 0
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %11, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @oggpack_bytes(i32 %478)
  %480 = mul nsw i32 %479, 8
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %12, align 8
  br label %482

482:                                              ; preds = %471, %428
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = icmp sgt i64 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %482
  %488 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = icmp sgt i64 %490, 0
  br i1 %491, label %492, label %583

492:                                              ; preds = %487, %482
  %493 = load i64, i64* %14, align 8
  %494 = icmp sgt i64 %493, 0
  br i1 %494, label %495, label %507

495:                                              ; preds = %492
  %496 = load i64, i64* %12, align 8
  %497 = load i64, i64* %14, align 8
  %498 = icmp sgt i64 %496, %497
  br i1 %498, label %499, label %507

499:                                              ; preds = %495
  %500 = load i64, i64* %12, align 8
  %501 = load i64, i64* %14, align 8
  %502 = sub nsw i64 %500, %501
  %503 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %503, i32 0, i32 5
  %505 = load i64, i64* %504, align 8
  %506 = add nsw i64 %505, %502
  store i64 %506, i64* %504, align 8
  br label %582

507:                                              ; preds = %495, %492
  %508 = load i64, i64* %13, align 8
  %509 = icmp sgt i64 %508, 0
  br i1 %509, label %510, label %522

510:                                              ; preds = %507
  %511 = load i64, i64* %12, align 8
  %512 = load i64, i64* %13, align 8
  %513 = icmp slt i64 %511, %512
  br i1 %513, label %514, label %522

514:                                              ; preds = %510
  %515 = load i64, i64* %12, align 8
  %516 = load i64, i64* %13, align 8
  %517 = sub nsw i64 %515, %516
  %518 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %518, i32 0, i32 5
  %520 = load i64, i64* %519, align 8
  %521 = add nsw i64 %520, %517
  store i64 %521, i64* %519, align 8
  br label %581

522:                                              ; preds = %510, %507
  %523 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 5
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* %16, align 8
  %527 = icmp sgt i64 %525, %526
  br i1 %527, label %528, label %554

528:                                              ; preds = %522
  %529 = load i64, i64* %14, align 8
  %530 = icmp sgt i64 %529, 0
  br i1 %530, label %531, label %549

531:                                              ; preds = %528
  %532 = load i64, i64* %12, align 8
  %533 = load i64, i64* %14, align 8
  %534 = sub nsw i64 %532, %533
  %535 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %535, i32 0, i32 5
  %537 = load i64, i64* %536, align 8
  %538 = add nsw i64 %537, %534
  store i64 %538, i64* %536, align 8
  %539 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %540 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %539, i32 0, i32 5
  %541 = load i64, i64* %540, align 8
  %542 = load i64, i64* %16, align 8
  %543 = icmp slt i64 %541, %542
  br i1 %543, label %544, label %548

544:                                              ; preds = %531
  %545 = load i64, i64* %16, align 8
  %546 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %546, i32 0, i32 5
  store i64 %545, i64* %547, align 8
  br label %548

548:                                              ; preds = %544, %531
  br label %553

549:                                              ; preds = %528
  %550 = load i64, i64* %16, align 8
  %551 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %551, i32 0, i32 5
  store i64 %550, i64* %552, align 8
  br label %553

553:                                              ; preds = %549, %548
  br label %580

554:                                              ; preds = %522
  %555 = load i64, i64* %13, align 8
  %556 = icmp sgt i64 %555, 0
  br i1 %556, label %557, label %575

557:                                              ; preds = %554
  %558 = load i64, i64* %12, align 8
  %559 = load i64, i64* %13, align 8
  %560 = sub nsw i64 %558, %559
  %561 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %561, i32 0, i32 5
  %563 = load i64, i64* %562, align 8
  %564 = add nsw i64 %563, %560
  store i64 %564, i64* %562, align 8
  %565 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %566 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %565, i32 0, i32 5
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* %16, align 8
  %569 = icmp sgt i64 %567, %568
  br i1 %569, label %570, label %574

570:                                              ; preds = %557
  %571 = load i64, i64* %16, align 8
  %572 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %573 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %572, i32 0, i32 5
  store i64 %571, i64* %573, align 8
  br label %574

574:                                              ; preds = %570, %557
  br label %579

575:                                              ; preds = %554
  %576 = load i64, i64* %16, align 8
  %577 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %578 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %577, i32 0, i32 5
  store i64 %576, i64* %578, align 8
  br label %579

579:                                              ; preds = %575, %574
  br label %580

580:                                              ; preds = %579, %553
  br label %581

581:                                              ; preds = %580, %514
  br label %582

582:                                              ; preds = %581, %499
  br label %583

583:                                              ; preds = %582, %487
  %584 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %585 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %584, i32 0, i32 3
  %586 = load i64, i64* %585, align 8
  %587 = icmp sgt i64 %586, 0
  br i1 %587, label %588, label %614

588:                                              ; preds = %583
  %589 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %601

593:                                              ; preds = %588
  %594 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %595 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %594, i32 0, i32 3
  %596 = load i64, i64* %595, align 8
  %597 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %598 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %597, i32 0, i32 1
  %599 = load i64, i64* %598, align 8
  %600 = mul nsw i64 %596, %599
  br label %605

601:                                              ; preds = %588
  %602 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %602, i32 0, i32 3
  %604 = load i64, i64* %603, align 8
  br label %605

605:                                              ; preds = %601, %593
  %606 = phi i64 [ %600, %593 ], [ %604, %601 ]
  store i64 %606, i64* %22, align 8
  %607 = load i64, i64* %12, align 8
  %608 = load i64, i64* %22, align 8
  %609 = sub nsw i64 %607, %608
  %610 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %611 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %610, i32 0, i32 4
  %612 = load i64, i64* %611, align 8
  %613 = add nsw i64 %612, %609
  store i64 %613, i64* %611, align 8
  br label %614

614:                                              ; preds = %605, %583
  store i32 0, i32* %2, align 4
  br label %615

615:                                              ; preds = %614, %119, %118
  %616 = load i32, i32* %2, align 4
  ret i32 %616
}

declare dso_local i32 @rint(i64) #1

declare dso_local i32 @oggpack_bytes(i32) #1

declare dso_local i32 @oggpack_writetrunc(i32, i64) #1

declare dso_local i32 @oggpack_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
