; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_pm_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_pm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32*, i8*, i32, i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@PMT_UNCOMPRESSED = common dso_local global i64 0, align 8
@PMT_ZIP = common dso_local global i64 0, align 8
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@PMT_CSO = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cso: read failed @ %08x\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cso: uncompress failed @ %08x with %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pm_read(i8* %0, i64 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PMT_UNCOMPRESSED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @fread(i8* %26, i32 1, i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %281

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PMT_ZIP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %8, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @gzread(%struct.TYPE_11__* %43, i8* %44, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = call i32 @gzerror2(%struct.TYPE_11__* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @Z_DATA_ERROR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @Z_STREAM_END, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %51
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = call i32 @gzrewind(%struct.TYPE_11__* %60)
  br label %62

62:                                               ; preds = %59, %55, %39
  br label %280

63:                                               ; preds = %33
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PMT_CSO, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %278

69:                                               ; preds = %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %10, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 11
  store i32 %76, i32* %15, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %17, align 4
  %92 = load i8*, i8** %4, align 8
  store i8* %92, i8** %18, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %249, %69
  %94 = load i64, i64* %5, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %277

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 2047
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i64, i64* %5, align 8
  %105 = icmp uge i64 %104, 2048
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i8*, i8** %18, align 8
  store i8* %107, i8** %19, align 8
  br label %112

108:                                              ; preds = %103, %96
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %19, align 8
  br label %112

112:                                              ; preds = %108, %106
  %113 = load i32, i32* %16, align 4
  %114 = and i32 %113, 2147483647
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = shl i32 %114, %118
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %112
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @SEEK_SET, align 4
  %134 = call i32 @fseek(i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %122
  %136 = load i8*, i8** %19, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @fread(i8* %136, i32 1, i32 2048, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %141, %142
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 2048
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %277

149:                                              ; preds = %135
  br label %219

150:                                              ; preds = %112
  %151 = load i32, i32* %17, align 4
  %152 = and i32 %151, 2147483647
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %152, %156
  %158 = load i32, i32* %11, align 4
  %159 = sub nsw i32 %157, %158
  %160 = and i32 %159, 4095
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %204

166:                                              ; preds = %150
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @SEEK_SET, align 4
  %178 = call i32 @fseek(i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %172, %166
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @fread(i8* %182, i32 1, i32 %183, i32 %186)
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %188, %189
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %179
  %197 = load i32, i32* @EL_STATUS, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %198)
  br label %277

200:                                              ; preds = %179
  %201 = load i32, i32* %15, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %200, %150
  %205 = load i8*, i8** %19, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 5
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @uncompress2(i8* %205, i32 2048, i8* %208, i32 %209)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %204
  %214 = load i32, i32* @EL_STATUS, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %214, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %215, i32 %216)
  br label %277

218:                                              ; preds = %204
  br label %219

219:                                              ; preds = %218, %149
  store i32 2048, i32* %14, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load i64, i64* %5, align 8
  %224 = icmp ult i64 %223, 2048
  br i1 %224, label %225, label %249

225:                                              ; preds = %222, %219
  %226 = load i64, i64* %5, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = icmp ult i64 %226, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i64, i64* %5, align 8
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %14, align 4
  br label %233

233:                                              ; preds = %230, %225
  %234 = load i32, i32* %13, align 4
  %235 = sub nsw i32 2048, %234
  %236 = load i32, i32* %14, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load i32, i32* %13, align 4
  %240 = sub nsw i32 2048, %239
  store i32 %240, i32* %14, align 4
  br label %241

241:                                              ; preds = %238, %233
  %242 = load i8*, i8** %18, align 8
  %243 = load i8*, i8** %19, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i32, i32* %14, align 4
  %248 = call i32 @memcpy(i8* %242, i8* %246, i32 %247)
  br label %249

249:                                              ; preds = %241, %222
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load i8*, i8** %18, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %18, align 8
  %257 = load i32, i32* %14, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* %5, align 8
  %265 = sub i64 %264, %263
  store i64 %265, i64* %5, align 8
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  %268 = load i32, i32* %17, align 4
  store i32 %268, i32* %16, align 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %17, align 4
  br label %93

277:                                              ; preds = %213, %196, %148, %93
  br label %279

278:                                              ; preds = %63
  store i32 0, i32* %7, align 4
  br label %279

279:                                              ; preds = %278, %277
  br label %280

280:                                              ; preds = %279, %62
  br label %281

281:                                              ; preds = %280, %25
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  ret i64 %283
}

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @gzread(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @gzerror2(%struct.TYPE_11__*) #1

declare dso_local i32 @gzrewind(%struct.TYPE_11__*) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @uncompress2(i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
