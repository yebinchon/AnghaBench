; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_XYMovement.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_XYMovement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }

@MF_SKULLFLY = common dso_local global i32 0, align 4
@MAXMOVE = common dso_local global i32 0, align 4
@MF_MISSILE = common dso_local global i32 0, align 4
@ceilingline = common dso_local global %struct.TYPE_22__* null, align 8
@skyflatnum = common dso_local global i64 0, align 8
@CF_NOMOMENTUM = common dso_local global i32 0, align 4
@MF_CORPSE = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@STOPSPEED = common dso_local global i32 0, align 4
@states = common dso_local global i64 0, align 8
@S_PLAY_RUN1 = common dso_local global i64 0, align 8
@S_PLAY = common dso_local global i32 0, align 4
@FRICTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_XYMovement(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MF_SKULLFLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = load i32, i32* @MF_SKULLFLY, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 11
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @P_SetMobjState(%struct.TYPE_21__* %37, i32 %42)
  br label %44

44:                                               ; preds = %24, %17
  br label %368

45:                                               ; preds = %12, %1
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 10
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %5, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MAXMOVE, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @MAXMOVE, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %71

58:                                               ; preds = %45
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MAXMOVE, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @MAXMOVE, align 4
  %67 = sub nsw i32 0, %66
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MAXMOVE, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @MAXMOVE, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %94

81:                                               ; preds = %71
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MAXMOVE, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @MAXMOVE, align 4
  %90 = sub nsw i32 0, %89
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %196, %94
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MAXMOVE, align 4
  %104 = sdiv i32 %103, 2
  %105 = icmp sgt i32 %102, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @MAXMOVE, align 4
  %109 = sdiv i32 %108, 2
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %106, %101
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sdiv i32 %115, 2
  %117 = add nsw i32 %114, %116
  store i32 %117, i32* %3, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sdiv i32 %121, 2
  %123 = add nsw i32 %120, %122
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %6, align 4
  %125 = ashr i32 %124, 1
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = ashr i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %139

128:                                              ; preds = %106
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %3, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %128, %111
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @P_TryMove(%struct.TYPE_21__* %140, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %189, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 10
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %147, align 8
  %149 = icmp ne %struct.TYPE_20__* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %152 = call i32 @P_SlideMove(%struct.TYPE_21__* %151)
  br label %188

153:                                              ; preds = %145
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MF_MISSILE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %153
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** @ceilingline, align 8
  %162 = icmp ne %struct.TYPE_22__* %161, null
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** @ceilingline, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = icmp ne %struct.TYPE_16__* %166, null
  br i1 %167, label %168, label %179

168:                                              ; preds = %163
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** @ceilingline, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @skyflatnum, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %178 = call i32 @P_RemoveMobj(%struct.TYPE_21__* %177)
  br label %368

179:                                              ; preds = %168, %163, %160
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %181 = call i32 @P_ExplodeMissile(%struct.TYPE_21__* %180)
  br label %187

182:                                              ; preds = %153
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  store i32 0, i32* %184, align 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %182, %179
  br label %188

188:                                              ; preds = %187, %150
  br label %189

189:                                              ; preds = %188, %139
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br label %196

196:                                              ; preds = %193, %190
  %197 = phi i1 [ true, %190 ], [ %195, %193 ]
  br i1 %197, label %101, label %198

198:                                              ; preds = %196
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %200 = icmp ne %struct.TYPE_20__* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CF_NOMOMENTUM, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %201
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 0
  store i32 0, i32* %212, align 8
  br label %368

213:                                              ; preds = %201, %198
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @MF_MISSILE, align 4
  %218 = load i32, i32* @MF_SKULLFLY, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %216, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %368

223:                                              ; preds = %213
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 7
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %368

232:                                              ; preds = %223
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @MF_CORPSE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %284

239:                                              ; preds = %232
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @FRACUNIT, align 4
  %244 = sdiv i32 %243, 4
  %245 = icmp sgt i32 %242, %244
  br i1 %245, label %269, label %246

246:                                              ; preds = %239
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @FRACUNIT, align 4
  %251 = sub nsw i32 0, %250
  %252 = sdiv i32 %251, 4
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %269, label %254

254:                                              ; preds = %246
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @FRACUNIT, align 4
  %259 = sdiv i32 %258, 4
  %260 = icmp sgt i32 %257, %259
  br i1 %260, label %269, label %261

261:                                              ; preds = %254
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @FRACUNIT, align 4
  %266 = sub nsw i32 0, %265
  %267 = sdiv i32 %266, 4
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %283

269:                                              ; preds = %261, %254, %246, %239
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 7
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 9
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %272, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %269
  br label %368

282:                                              ; preds = %269
  br label %283

283:                                              ; preds = %282, %261
  br label %284

284:                                              ; preds = %283, %232
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @STOPSPEED, align 4
  %289 = sub nsw i32 0, %288
  %290 = icmp sgt i32 %287, %289
  br i1 %290, label %291, label %351

291:                                              ; preds = %284
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @STOPSPEED, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %351

297:                                              ; preds = %291
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @STOPSPEED, align 4
  %302 = sub nsw i32 0, %301
  %303 = icmp sgt i32 %300, %302
  br i1 %303, label %304, label %351

304:                                              ; preds = %297
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @STOPSPEED, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %351

310:                                              ; preds = %304
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %312 = icmp ne %struct.TYPE_20__* %311, null
  br i1 %312, label %313, label %325

313:                                              ; preds = %310
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %351

319:                                              ; preds = %313
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %351

325:                                              ; preds = %319, %310
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %327 = icmp ne %struct.TYPE_20__* %326, null
  br i1 %327, label %328, label %346

328:                                              ; preds = %325
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 8
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @states, align 8
  %335 = sub nsw i64 %333, %334
  %336 = load i64, i64* @S_PLAY_RUN1, align 8
  %337 = sub nsw i64 %335, %336
  %338 = trunc i64 %337 to i32
  %339 = icmp ult i32 %338, 4
  br i1 %339, label %340, label %346

340:                                              ; preds = %328
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %342, align 8
  %344 = load i32, i32* @S_PLAY, align 4
  %345 = call i32 @P_SetMobjState(%struct.TYPE_21__* %343, i32 %344)
  br label %346

346:                                              ; preds = %340, %328, %325
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 0
  store i32 0, i32* %348, align 8
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 1
  store i32 0, i32* %350, align 4
  br label %368

351:                                              ; preds = %319, %313, %304, %297, %291, %284
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @FRICTION, align 4
  %356 = call i8* @FixedMul(i32 %354, i32 %355)
  %357 = ptrtoint i8* %356 to i32
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @FRICTION, align 4
  %364 = call i8* @FixedMul(i32 %362, i32 %363)
  %365 = ptrtoint i8* %364 to i32
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 4
  br label %368

368:                                              ; preds = %44, %176, %208, %222, %231, %281, %351, %346
  ret void
}

declare dso_local i32 @P_SetMobjState(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @P_TryMove(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @P_SlideMove(%struct.TYPE_21__*) #1

declare dso_local i32 @P_RemoveMobj(%struct.TYPE_21__*) #1

declare dso_local i32 @P_ExplodeMissile(%struct.TYPE_21__*) #1

declare dso_local i8* @FixedMul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
