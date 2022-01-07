; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_PrecacheLevel.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_PrecacheLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_21__ = type { i64 }

@demoplayback = common dso_local global i64 0, align 8
@numflats = common dso_local global i32 0, align 4
@numsectors = common dso_local global i32 0, align 4
@sectors = common dso_local global %struct.TYPE_14__* null, align 8
@flatmemory = common dso_local global i64 0, align 8
@firstflat = common dso_local global i32 0, align 4
@lumpinfo = common dso_local global %struct.TYPE_15__* null, align 8
@PU_CACHE = common dso_local global i32 0, align 4
@numtextures = common dso_local global i32 0, align 4
@numsides = common dso_local global i32 0, align 4
@sides = common dso_local global %struct.TYPE_13__* null, align 8
@skytexture = common dso_local global i64 0, align 8
@texturememory = common dso_local global i64 0, align 8
@textures = common dso_local global %struct.TYPE_19__** null, align 8
@numsprites = common dso_local global i32 0, align 4
@thinkercap = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@P_MobjThinker = common dso_local global i64 0, align 8
@spritememory = common dso_local global i64 0, align 8
@sprites = common dso_local global %struct.TYPE_22__* null, align 8
@firstspritelump = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_PrecacheLevel() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = load i64, i64* @demoplayback, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %265

14:                                               ; preds = %0
  %15 = load i32, i32* @numflats, align 4
  %16 = call i8* @alloca(i32 %15)
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = load i32, i32* @numflats, align 4
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %41, %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @numsectors, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i8*, i8** %1, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sectors, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %25, i64 %31
  store i8 1, i8* %32, align 1
  %33 = load i8*, i8** %1, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sectors, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %33, i64 %39
  store i8 1, i8* %40, align 1
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %20

44:                                               ; preds = %20
  store i64 0, i64* @flatmemory, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @numflats, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load i8*, i8** %1, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load i32, i32* @firstflat, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @lumpinfo, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @flatmemory, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* @flatmemory, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @PU_CACHE, align 4
  %70 = call i32 @W_CacheLumpNum(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %56, %49
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %45

75:                                               ; preds = %45
  %76 = load i32, i32* @numtextures, align 4
  %77 = call i8* @alloca(i32 %76)
  store i8* %77, i8** %2, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = load i32, i32* @numtextures, align 4
  %80 = call i32 @memset(i8* %78, i32 0, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %110, %75
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @numsides, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load i8*, i8** %2, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sides, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* %86, i64 %92
  store i8 1, i8* %93, align 1
  %94 = load i8*, i8** %2, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sides, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8, i8* %94, i64 %100
  store i8 1, i8* %101, align 1
  %102 = load i8*, i8** %2, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sides, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %102, i64 %108
  store i8 1, i8* %109, align 1
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %81

113:                                              ; preds = %81
  %114 = load i8*, i8** %2, align 8
  %115 = load i64, i64* @skytexture, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 1, i8* %116, align 1
  store i64 0, i64* @texturememory, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %165, %113
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @numtextures, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %168

121:                                              ; preds = %117
  %122 = load i8*, i8** %2, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %165

129:                                              ; preds = %121
  %130 = load %struct.TYPE_19__**, %struct.TYPE_19__*** @textures, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %130, i64 %132
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %8, align 8
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %161, %129
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %135
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %7, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** @lumpinfo, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @texturememory, align 8
  %157 = add nsw i64 %156, %155
  store i64 %157, i64* @texturememory, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @PU_CACHE, align 4
  %160 = call i32 @W_CacheLumpNum(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %141
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %135

164:                                              ; preds = %135
  br label %165

165:                                              ; preds = %164, %128
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %117

168:                                              ; preds = %117
  %169 = load i32, i32* @numsprites, align 4
  %170 = call i8* @alloca(i32 %169)
  store i8* %170, i8** %3, align 8
  %171 = load i8*, i8** %3, align 8
  %172 = load i32, i32* @numsprites, align 4
  %173 = call i32 @memset(i8* %171, i32 0, i32 %172)
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @thinkercap, i32 0, i32 1), align 8
  store %struct.TYPE_18__* %174, %struct.TYPE_18__** %9, align 8
  br label %175

175:                                              ; preds = %193, %168
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %177 = icmp ne %struct.TYPE_18__* %176, @thinkercap
  br i1 %177, label %178, label %197

178:                                              ; preds = %175
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @P_MobjThinker, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load i8*, i8** %3, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %188 = bitcast %struct.TYPE_18__* %187 to %struct.TYPE_21__*
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i8, i8* %186, i64 %190
  store i8 1, i8* %191, align 1
  br label %192

192:                                              ; preds = %185, %178
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %9, align 8
  br label %175

197:                                              ; preds = %175
  store i64 0, i64* @spritememory, align 8
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %262, %197
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @numsprites, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %265

202:                                              ; preds = %198
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = icmp ne i8 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %202
  br label %262

210:                                              ; preds = %202
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %258, %210
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sprites, align 8
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %212, %218
  br i1 %219, label %220, label %261

220:                                              ; preds = %211
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sprites, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i64 %228
  store %struct.TYPE_20__* %229, %struct.TYPE_20__** %10, align 8
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %254, %220
  %231 = load i32, i32* %6, align 4
  %232 = icmp slt i32 %231, 8
  br i1 %232, label %233, label %257

233:                                              ; preds = %230
  %234 = load i32, i32* @firstspritelump, align 4
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %234, %241
  store i32 %242, i32* %7, align 4
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** @lumpinfo, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @spritememory, align 8
  %250 = add nsw i64 %249, %248
  store i64 %250, i64* @spritememory, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @PU_CACHE, align 4
  %253 = call i32 @W_CacheLumpNum(i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %233
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %230

257:                                              ; preds = %230
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  br label %211

261:                                              ; preds = %211
  br label %262

262:                                              ; preds = %261, %209
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %4, align 4
  br label %198

265:                                              ; preds = %13, %198
  ret void
}

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @W_CacheLumpNum(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
